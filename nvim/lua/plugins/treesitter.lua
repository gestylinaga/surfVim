-- Treesitter -- syntax highlighting
-- from: nvim-treesitter/nvim-treesitter
-- see doc: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/doc/nvim-treesitter.txt
return {
  "nvim-treesitter/nvim-treesitter",
  event = "VeryLazy",
  dependencies = {},
  build = ":TSUpdate",
  opts = {
    highlight = {
      enable = true
    },
    auto_install = true,
    sync_install = true,
    ensure_installed = {
      "python",
      "markdown",
      "javascript",
      "typescript",
      "lua",
      "html",
      "css",
      "scss",
      --"c",
      --"rust",
    },
    ignore_install = {},
  },
  config = function (_, opts)
    local configs = require("nvim-treesitter.configs")
    configs.setup(opts)
  end
}
