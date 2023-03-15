local leap = require('leap')
leap.opts.case_sensitive = true
leap.opts.substitute_chars = { ['\r'] = '¬' }
leap.opts.special_keys.prev_target = { '<s-enter>', ',' }


require('leap').add_default_mappings()
-- vim.keymap.set({'x','n','o'},'f',"<Plua>(leap-forward-to)")
-- vim.keymap.set({'x','n','o'},'F',"<Plua>(leap-backward-to)")


vim.cmd [[
autocmd ColorScheme * lua require('leap').init_highlight(true)
]]

------------ flit ------------
-- require('flit').setup {
--   keys = { f = 'f', F = 'F', t = '\'t', T = '\'t' },
--   -- A string like "nv", "nvo", "o", etc.
--   labeled_modes = "v",
--   multiline = true,
--   -- Like `leap`s similar argument (call-specific overrides).
--   -- E.g.: opts = { equivalence_classes = {} }
--   opts = {}
-- }
--
