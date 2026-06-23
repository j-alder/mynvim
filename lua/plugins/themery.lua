return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      themes = {{
	      name = "Gruvbox",
	      colorscheme = "gruvbox",
      },
      {
	      name = "Catppuccin",
	      colorscheme = "catppuccin",
      },
      {
	      name = "Habamax",
	      colorscheme = "habamax",
      }}
    })
  end
}
