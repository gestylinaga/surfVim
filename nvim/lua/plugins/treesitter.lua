-- Treesitter -- syntax highlighting
-- from: nvim-treesitter/nvim-treesitter
-- see doc: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/doc/nvim-treesitter.txt
return {
  "nvim-treesitter/nvim-treesitter",
  event = "VeryLazy",
  dependencies = {},
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "bash",
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
    sync_install = true,
    auto_install = true,
    ignore_install = {},
    highlight = {
      enable = true
    },
  },
  config = function (opts)
    local configs = require("nvim-treesitter.configs")
    configs.setup(opts)
  end
}
