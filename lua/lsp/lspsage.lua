--			/ /________  _________ _____ _____ _
--		 / / ___/ __ \/ ___/ __ `/ __ `/ __ `/
--		/ (__  ) /_/ (__  ) /_/ / /_/ / /_/ /
--	 /_/____/ .___/____/\__,_/\__, /\__,_/
--				 /_/               /____/
--
-- ⚡ Designed for convenience and efficiency ⚡

local keymap = vim.keymap.set
-- Lsp finder find the symbol definition implement reference
-- if there is no implement it will hide
-- when you use action in finder like open vsplit then you can
-- use <C-t> to jump back
keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")

-- Code action
keymap({ "n", "v" }, "<leader>la", "<cmd>Lspsaga code_action<CR>")

-- Rename
keymap("n", "gr", "<cmd>Lspsaga rename<CR>")

-- Peek Definition
-- you can edit the definition file in this float window
-- also support open/vsplit/etc operation check definition_action_keys
-- support tagstack C-t jump back
-- keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>")

-- Go to Definition
keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>")

-- Show line diagnostics you can pass argument ++unfocus to make
-- show_line_diagnostics float window unfocus
keymap("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>")

-- Show cursor diagnostic
-- also like show_line_diagnostics  support pass ++unfocus
keymap("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>")

-- Show buffer diagnostic
keymap("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>")

-- Diagnostic jump can use `<c-o>` to jump back
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>")

-- Diagnostic jump with filter like Only jump to error
keymap("n", "[E", function()
	require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end)
keymap("n", "]E", function()
	require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end)

-- Toggle Outline
keymap("n", "<leader>lo", "<cmd>Lspsaga outline<CR>")
keymap("n", "T", "<cmd>Lspsaga outline<CR>")

-- Hover Doc
-- if there has no hover will have a notify no information available
-- to disable it just Lspsaga hover_doc ++quiet
-- press twice it will jump into hover window
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>")
-- if you want keep hover window in right top you can use ++keep arg
-- notice if you use hover with ++keep you press this keymap it will
-- close the hover window .if you want jump to hover window must use
-- wincmd command <C-w>w
keymap("n", "K", "<cmd>Lspsaga hover_doc ++keep<CR>")

-- Callhierarchy
-- keymap("n", "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>")
-- keymap("n", "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>")

-- Float terminal
keymap({ "n", "t" }, "<A-d>", "<cmd>Lspsaga term_toggle<CR>")


require('goto-preview').setup {}
vim.keymap.set("n", "gp", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true })

vim.cmd [[
nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>
nnoremap gpt <cmd>lua require('goto-preview').goto_preview_type_definition()<CR>
nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>
nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>
nnoremap gpr <cmd>lua require('goto-preview').goto_preview_references()<CR>
]]

require("lspsaga").setup({
	preview = {
		lines_above = 0,
		lines_below = 10,
	},
	symbol_in_winbar = {
		enable = true,
	},
	scroll_preview = {
		scroll_down = "<C-f>",
		scroll_up = "<C-b>",
	},
	request_timeout = 2000,
	-- TODO: lsp_finder
	finder = {
		--percentage
		max_height = 0.5,
		keys = {
			jump_to = 'p',
			edit = { 'o', '<CR>' },
			vsplit = 's',
			split = 'i',
			tabe = 't',
			tabnew = 'r',
			quit = { 'q', '<ESC>' },
			close_in_preview = '<ESC>'
		},
	},
})
