local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

-- method 3
wk.register({
  ["<leader>"] = {
    r = { "<Plug>TranslateR","终端翻译" },
    x = { "<Plug>TranslateX","终端翻译" },
  },
  ["<leader>f"] = {
    name = "+file",
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
    n = { "<cmd>enew<cr>", "New File" },
    y = { "<Plug>TranslateW", "翻译"}
  },
  
})





