-- Lualine -- status line written in lua
-- from: nvim-lualine/lualine.nvim
-- see doc: https://github.com/nvim-lualine/lualine.nvim/blob/master/doc/lualine.txt
return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    --{"rose-pine/neovim", name = "rose-pine"},
  },
  opts = {
    options = {
      theme = "auto",
      --theme = "rose-pine",
    },
  },
}
