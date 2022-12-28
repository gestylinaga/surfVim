require("tokyonight").setup({
  style = "night",
  styles = {
    comments = { italic = false },
    keywords = { italic = false },
    functions = {},
    variables = {},
  },
})

vim.o.background = 'dark'
vim.cmd([[colorscheme tokyonight-night]])
