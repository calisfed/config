local colorscheme = "carbonfox"

vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]






local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end

vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]
