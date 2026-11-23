-- Leader key first — must be set before plugins load, some read it at import time.
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("lazy-bootstrap")

require("config.options")
require("config.keymaps")
require("config.autocmds")

require("lazy").setup({
  { import = "plugins" },
}, {
  checker = { enabled = true, notify = false },
  change_detection = { notify = false },
  install = { colorscheme = { "gruvbox" }},
})


