-- Lualine -- status line written in lua
-- from: nvim-lualine/lualine.nvim
-- see doc: https://github.com/nvim-lualine/lualine.nvim/blob/master/doc/lualine.txt
return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    options = {
      theme = "auto",
    },
  },
}
