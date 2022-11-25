local status_ok, zen = pcall(require, "true-zen")
if not status_ok then
	return
end

zen.setup({
	modes = {
		ataraxis = {
			hide_numbers = false,
		},
	},
})
