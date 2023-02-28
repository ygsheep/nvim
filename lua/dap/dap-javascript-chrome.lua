-- build vscode-chrome-debug
-- git clone https://github.com/Microsoft/vscode-chrome-debug
-- cd ./vscode-chrome-debug
-- npm install
-- npm run build
--

dap.adapters.chrome = {
    type = "executable",
    command = "node",
    args = { os.getenv("HOME") .. "/.local/share/nvim/mason/bin/"} -- TODO adjust
}

dap.configurations.javascriptreact = { -- change this to javascript if needed
    {
        type = "chrome",
        request = "attach",
        program = "${file}",
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
        port = 9222,
        webRoot = "${workspaceFolder}"
    }
}

dap.configurations.typescriptreact = { -- change to typescript if needed
    {
        type = "chrome",
        request = "attach",
        program = "${file}",
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
        port = 9222,
        webRoot = "${workspaceFolder}"
    }
}
