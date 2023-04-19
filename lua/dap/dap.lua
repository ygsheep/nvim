-- 典型的调试流程包括：
-- 通过 设置断点。:lua require'dap'.toggle_breakpoint()
-- 通过 启动调试会话并恢复执行。:lua require'dap'.continue()
-- 通过 和 单步执行代码。:lua require'dap'.step_over():lua require'dap'.step_into()
-- 通过内置 REPL： 或使用小部件 UI 检查状态 （:lua require'dap'.repl.open():help dap-widgets)

local map = vim.keymap.set

map('n', '<F5>', function() require('dap').continue() end)
map('n', '<F10>', function() require('dap').step_over() end)
map('n', '<F11>', function() require('dap').step_into() end)
map('n', '<F12>', function() require('dap').step_out() end)
map('n', '<Leader>db', function() require('dap').toggle_breakpoint() end)
map('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
-- map('n', '<Leader>B', function() require('dap').set_breakpoint() end)
map('n', '<Leader>dB', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
map('n', '<Leader>B', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
-- map('n', '<Leader>dr', function() require('dap').repl.open() end)
map('n', '<Leader>dl', function() require('dap').run_last() end)
map({'n', 'v'}, '<Leader>dh', function()
	require('dap.ui.widgets').hover()
end)
map({'n', 'v'}, '<Leader>dp', function()
	require('dap.ui.widgets').preview()
end)
map('n', '<Leader>df', function()
	local widgets = require('dap.ui.widgets')
	widgets.centered_float(widgets.frames)
end)
map('n', '<Leader>ds', function()
	local widgets = require('dap.ui.widgets')
	widgets.centered_float(widgets.scopes)
end)

-- map("n",",r",":lua require'dap'.continue()<CR>")
-- map("n",",i",":lua require'dap'.step_into()<CR>")
-- map("n",",n",":lua require'dap'.step_over()<CR>")
-- map("n","<LEADER>dd",":lua require'dap'.toggle_breakpoint()<CR>")
-- map("n","<LEADER>dw",":lua require'dap'.repl.open()<CR>")

local dap_breakpoint_color = {
	breakpoint = {
		ctermbg=0,
		fg='#993939',
		bold = true,
		-- bg='#31353f',
	},
	logpoing = {
		ctermbg=0,
		fg='#61afef',
		bg='#31353f',
	},
	stopped = {
		ctermbg=0,
		fg='#98c379',
		bg='#1a1a1a'
	},
	now = {
		underline=true,
		-- italic = true,
		bg='#1a1a1a'
	}
}
vim.api.nvim_set_hl(0, 'DapBreakpoint', dap_breakpoint_color.breakpoint)
vim.api.nvim_set_hl(0, 'DapLogPoint', dap_breakpoint_color.logpoing)
vim.api.nvim_set_hl(0, 'DapStopped', dap_breakpoint_color.stopped)
vim.api.nvim_set_hl(0, 'DapNow', dap_breakpoint_color.now)

local dap_breakpoint = {
	error = {
		text = "", --  
		texthl = "DapBreakpoint",
		linehl = "",
		numhl = "DapBreakpoint",
	},
	condition = {
		text = '',
		texthl = 'DapBreakpoint',
		linehl = 'DapBreakpoint',
		numhl = 'DapBreakpoint',
	},
	rejected = {
		text = "",
		texthl = "DapBreakpint",
		linehl = "DapBreakpoint",
		numhl = "DapBreakpoint",
	},
	logpoint = {
		text = '',
		texthl = 'DapLogPoint',
		linehl = 'DapLogPoint',
		numhl = 'DapLogPoint',
	},
	stopped = {
		-- text = '',
		text = "",
		texthl = 'DapStopped',
		linehl = 'DapNow',
		numhl = 'DapStopped',
	},
}

vim.fn.sign_define('DapBreakpoint', dap_breakpoint.error)
vim.fn.sign_define('DapBreakpointCondition', dap_breakpoint.condition)
vim.fn.sign_define('DapBreakpointRejected', dap_breakpoint.rejected)
vim.fn.sign_define('DapLogPoint', dap_breakpoint.logpoint)
vim.fn.sign_define('DapStopped', dap_breakpoint.stopped)
