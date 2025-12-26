return {
  {
    "saghen/blink.cmp",
    version = "1.*",
    event = "InsertEnter",
    ---@module "blink.cmp"
    ---@type blink.cmp.Config
    opts = {
      snippets = { preset = "default" },

      sources = {
        default = { "lsp", "path", "buffer", "snippets" },
      },

      keymap = {
        preset = "enter",
        ["<C-y>"] = { "select_and_accept" },
      },

      completion = {
        documentation = { auto_show = true },
      },
    },
  },
}

