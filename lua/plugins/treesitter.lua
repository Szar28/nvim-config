return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  main = "nvim-treesitter.config",
  opts = {
    ensure_installed = {
      "bash", "c", "diff", "html", "lua", "luadoc", "markdown", "markdown_inline",
      "query", "vim", "vimdoc",
      -- add whichever languages you write:
      "python", "typescript", "javascript", "json", "yaml", "toml", "cpp",
    },
    highlight = { enable = true },
    indent    = { enable = true },
    auto_install = true,
  },
}

