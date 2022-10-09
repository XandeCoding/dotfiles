local colorscheme = "tokyonight"
--local colorscheme = "catppuccin"

if colorscheme == "tokyonight" then
  vim.g.tokyonight_style = "day"
  vim.g.tokyonight_italic_functions = true
elseif colorscheme == "catppuccin" then
  local catppuccin = require("catppuccin")
  vim.g.catppuccin_flavour = "latte"
  catppuccin.setup()
end

pcall(vim.cmd, "colorscheme " .. colorscheme)

