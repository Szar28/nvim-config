-- Highlight yanked text briefly so you can see what you picked up.
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("HighlightYank", { clear = true }),
  callback = function() vim.hl.on_yank() end,
})


vim.diagnostic.config({
    virtual_text = true,
    signs = true,
})
