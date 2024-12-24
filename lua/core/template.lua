local status_ok, template = pcall(require, "template")
if not status_ok then
	vim.notify("auto-save not found!")
	return
end

local config = {


}

template.setup(config)
