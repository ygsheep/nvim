local dap = require('dap')

-- dap.adapters.cppdbg = {
-- 	id = "cppdbg",
-- 	type = 'executable',
-- 	command = "/home/yysheep/.local/share/nvim/mason/bin/OpenDebugAD7",
-- }

dap.adapters.cpptools = {
	type = "executable",
	command = os.getenv('HOME') .. '/.local/share/nvim/mason/bin/OpenDebugAD7',
	-- command = "/home/raven/.local/share/nvim/dapinstall/ccppr_vsc/extension/debugAdapters/bin/OpenDebugAD7",
}

local cmd = os.getenv('HOME') .. '/.local/share/nvim/mason/bin/codelldb'
dap.adapters.codelldb = function(on_adapter)
	-- This asks the system for a free port
	local tcp = vim.loop.new_tcp()
	tcp:bind('127.0.0.1', 0)
	local port = tcp:getsockname().port
	tcp:shutdown()
	tcp:close()

	-- Start codelldb with the port
	local stdout = vim.loop.new_pipe(false)
	local stderr = vim.loop.new_pipe(false)
	local opts = {
		stdio = { nil, stdout, stderr },
		args = { '--port', tostring(port) },
	}
	local handle
	local pid_or_err
	handle, pid_or_err = vim.loop.spawn(cmd, opts, function(code)
		stdout:close()
		stderr:close()
		handle:close()
		if code ~= 0 then
			print("codelldb exited with code", code)
		end
	end)
	if not handle then
		vim.notify("Error running codelldb: " .. tostring(pid_or_err), vim.log.levels.ERROR)
		stdout:close()
		stderr:close()
		return
	end
	vim.notify('codelldb started. pid=' .. pid_or_err)
	stderr:read_start(function(err, chunk)
		assert(not err, err)
		if chunk then
			vim.schedule(function()
				require("dap.repl").append(chunk)
			end)
		end
	end)
	local adapter = {
		type = 'server',
		host = '127.0.0.1',
		port = port
	}
	-- 💀
	-- Wait for codelldb to get ready and start listening before telling nvim-dap to connect
	-- If you get connect errors, try to increase 500 to a higher value, or check the stderr (Open the REPL)
	vim.defer_fn(function() on_adapter(adapter) end, 500)
end


dap.configurations.cpp = {
	{
		name = "Launch file",
		type = "codelldb",
		request = "launch",
		program = function()
			return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
		end,
		-- pid = function()
		-- 	local handle = io.popen('pgrep hw$')
		-- 	local result = handle:read()
		-- 	handle:close()
		-- 	return result
		-- end,
		cwd = '${workspaceFolder}',
		stopOnEntry = true,
		terminal = 'integrated',
	},

	{
		name = "Launch file",
		type = "cpptools",
		request = "launch",
		-- miDebuggerPath = "/usr/bin/gdb",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/cmake_Build_Debug/project", "file")
		end,
		cwd = "${workspaceFolder}",
		stopOnEntry = true,
	},

	{
		name = "Attach process",
		type = "cpptools",
		request = "attach",
		miDebuggerPath = "/usr/bin/gdb",
		program = function()
			return require("dap.utils.pick_process").pick_process()
		end,
		cwd = "${workspaceFolder}",
		stopOnEntry = true,

	},
	{
		name = "Attach to gdbserver :1234",
		type = "cppdbg",
		request = "launch",
		MIMode = "gdb",
		miDebuggerServerAddress = "localhost:1234",
		miDebuggerPath = "/usr/bin/gdb",
		cwd = "${workspaceFolder}",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
	},
}

-- setup other language
dap.configurations.c = dap.configurations.cpp
