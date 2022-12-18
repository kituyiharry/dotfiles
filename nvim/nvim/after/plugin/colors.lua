function SetupColors(color)
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { ctermbg = "none" })
	vim.api.nvim_set_hl(0, "VertSplit", { ctermbg = "none" })
end
SetupColors()
