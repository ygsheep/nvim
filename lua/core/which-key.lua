local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  vim.notify("which-key.nvim not found!")
	return
end

---@class wk.Opts
local config = {
  ---@type false | "classic" | "modern" | "helix"
  preset = "helix",
  -- Delay before showing the popup. Can be a number or a function that returns a number.
  ---@type number | fun(ctx: { keys: string, mode: string, plugin?: string }):number
  delay = function(ctx)
    return ctx.plugin and 0 or 100
  end,
}

which_key.setup(config)
