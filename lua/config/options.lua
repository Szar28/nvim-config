local opt = vim.opt

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.showmode = false -- lualine will show the mode

opt.clipboard = "unnamedplus" -- system clipboard by default
opt.breakindent = true
opt.undofile = true -- persistent undo across sessions

opt.ignorecase = true
opt.smartcase = true

opt.signcolumn = "yes" -- always visible; avoids UI shift
opt.updatetime = 250
opt.timeoutlen = 300 -- which-key wants a short one

opt.splitright = true
opt.splitbelow = true

opt.list = false
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
opt.inccommand = "split" -- live preview for :s
opt.cursorline = true
opt.scrolloff = 10
