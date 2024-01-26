-- Treesitter -- syntax highlighting
-- from: nvim-treesitter/nvim-treesitter
-- see doc: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/doc/nvim-treesitter.txt
return {
  "nvim-treesitter/nvim-treesitter",
  event = "VeryLazy",
  build = ":TSUpdate",

  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
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
      highlight = {
        enable = true
      },
    })
  end
}
