return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  version = false,
  lazy = false,
  opts = {
    highlight = { enable = true },
    ensure_installed = {
      "bash",
      "javascript",
      "typescript",
      "json",
      "lua",
      "luadoc",
      "luap",
      "markdown",
      "markdown_inline",
      "vim",
      "vimdoc",
      "yaml",
      "xml",
      "haskell",
    },
  },
  build = ':TSUpdate',
}

