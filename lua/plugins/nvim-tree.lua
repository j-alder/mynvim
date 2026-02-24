return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,
  keys = {
    { "<leader>to", ":NvimTreeOpen<cr>", desc = "Open NvimTree" },
    { "<leader>tc", ":NvimTreeClose<cr>", desc = "Close NvimTree" }
  }
}

