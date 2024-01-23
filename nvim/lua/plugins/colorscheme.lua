-- NeoVim Color Scheme
return {
  "folke/tokyonight.nvim",
  lazy = false,
  config = function()
    require("tokyonight").setup({
      style = "night",
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
      }
    })
    vim.o.background = "dark"
    vim.cmd("colorscheme tokyonight-night")
  end
}
