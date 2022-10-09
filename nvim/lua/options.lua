local options = {
  expandtab = true,
  clipboard = "unnamedplus",
  cmdheight = 2,
  completeopt = {"menuone", "noselect"},
  conceallevel = 0,
  fileencoding = "utf-8",
  pumheight = 10,
  showtabline = 2,
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  timeoutlen = 500,
  updatetime = 750,
  shiftwidth = 2,
  tabstop = 2,
  number = true,
  wrap = false,
  scrolloff = 8,
  sidescrolloff = 8,
  guifont = "FiraCode Nerd Font Mono Regular:h20",
  termguicolors = true,
}

vim.opt.shortmess:append "c"

for key, value in pairs(options) do
  vim.opt[key] = value
end

