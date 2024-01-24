-- Tokyo Night Optional Color Scheme
return {
  "folke/tokyonight.nvim",
  lazy = true,
  config = function ()
    require("tokyonight").setup({
      style = "night",
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
      }
    })
    --vim.cmd("colorscheme tokyonight-night")
  end
}
