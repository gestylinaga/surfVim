-- Tokyo Night Color Scheme
return {
  "folke/tokyonight.nvim",
  lazy = false,
  opts = {
    style = "night",
    styles = {
      comments = { italic = false },
      keywords = { italic = false },
    }
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.o.background = "dark"
    vim.cmd([[colorscheme tokyonight-night]])
  end
}
