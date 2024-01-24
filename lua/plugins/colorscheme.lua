-- NeoVim Color Scheme
return {
  "rose-pine/neovim",
  name = "rose-pine",
  priority = 1000,
  config = function()
    require("rose-pine").setup({
      variant = "auto",
      dark_variant = "main",
      styles = {
        italic = false,
      },
    })
    vim.o.background = "dark"
    vim.cmd("colorscheme rose-pine-main")
  end
}
