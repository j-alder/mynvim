return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      themes = {
        { name = "catppuccin latte", colorscheme = "catppuccin-latte" },
        { name = "catppuccin frappe", colorscheme = "catppuccin-frappe" },
        { name = "catppuccin mocha", colorscheme = "catppuccin-mocha" },
        { name = "dayfox", colorscheme = "dayfox" },
        { name = "dawnfox", colorscheme = "dawnfox" },
        { name = "duskfox", colorscheme = "duskfox" },
        { name = "nightfox", colorscheme = "nightfox" },
      }
    })
  end
}
