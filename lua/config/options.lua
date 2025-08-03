-- globals
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

-- functionality
vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true
vim.opt.updatetime = 250
vim.opt.confirm = true

-- appearance
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.laststatus = 3
vim.opt.list = true
vim.opt.confirm = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.scrolloff = 30
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.spell = false

-- statusline
vim.opt.showmode = false
-- local statusline = {
--   ' %t',
--   '%r',
--   '%m',
--   '%=',
--   '%{&filetype}',
--   ' %2p%%',
--   ' %3l:%-2c '
-- }
-- vim.o.statusline = table.concat(statusline, '')


-- editing
vim.opt.breakindent = true
vim.opt.linebreak = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.ignorecase = true
vim.opt.smartcase = true

