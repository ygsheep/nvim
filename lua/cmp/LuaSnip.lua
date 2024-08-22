require("luasnip.loaders.from_vscode").lazy_load() --  加载已有vscode 补全
require("luasnip.loaders.from_vscode").load({ paths = "./vscode-snippets" })
require("luasnip.loaders.from_snipmate").lazy_load()
-- require("luasnip.loaders.from_snipmate").lazy_load({paths = "./UltiSnips"})

local ls = require("luasnip")

vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

vim.keymap.set({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})
