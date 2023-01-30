-- 典型的调试流程包括：
--
-- 通过 设置断点。:lua require'dap'.toggle_breakpoint()
-- 通过 启动调试会话并恢复执行。:lua require'dap'.continue()
-- 通过 和 单步执行代码。:lua require'dap'.step_over():lua require'dap'.step_into()
-- 通过内置 REPL： 或使用小部件 UI 检查状态 （:lua require'dap'.repl.open():help dap-widgets)

local map = vim.keymap.set

map("n","F5",":lua require'dap'.continue()<CR>")
map("n","F6",":lua require'dap'.step_into()<CR>")
map("n","F7",":lua require'dap'.step_over()<CR>")
map("n","<LEADER>dd",":lua require'dap'.toggle_breakpoint()<CR>")
map("n","<LEADER>dw",":lua require'dap'.repl.open()<CR>")
map("n","<LEADER>dc",":lua require'dap'.repl.close()<CR>")

local dap_breakpoint_color = {
    breakpoint = {
        ctermbg=0,
        fg='#993939',
        bg='#31353f',
    },
    logpoing = {
        ctermbg=0,
        fg='#61afef',
        bg='#31353f',
    },
    stopped = {
        ctermbg=0,
        fg='#98c379',
        bg='#31353f'
    },
}
vim.api.nvim_set_hl(0, 'DapBreakpoint', dap_breakpoint_color.breakpoint)
vim.api.nvim_set_hl(0, 'DapLogPoint', dap_breakpoint_color.logpoing)
vim.api.nvim_set_hl(0, 'DapStopped', dap_breakpoint_color.stopped)

local dap_breakpoint = {
    error = {
        text = "",
        texthl = "DapBreakpoint",
        linehl = "DapBreakpoint",
        numhl = "DapBreakpoint",
    },
    condition = {
        text = 'ﳁ',
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
        text = '',
        texthl = 'DapStopped',
        linehl = 'DapStopped',
        numhl = 'DapStopped',
    },
}

vim.fn.sign_define('DapBreakpoint', dap_breakpoint.error)
vim.fn.sign_define('DapBreakpointCondition', dap_breakpoint.condition)
vim.fn.sign_define('DapBreakpointRejected', dap_breakpoint.rejected)
vim.fn.sign_define('DapLogPoint', dap_breakpoint.logpoint)
vim.fn.sign_define('DapStopped', dap_breakpoint.stopped)
