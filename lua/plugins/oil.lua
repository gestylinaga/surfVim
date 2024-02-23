-- Oil.nvim - file explorer / filesystem editor
return {
  "stevearc/oil.nvim",
  opts = {
    default_file_explorer = false,
  },
  keys = {
    {"-", ":Oil<CR>", desc = "Open/edit parent directory"},
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function(opts)
    require("oil").setup(opts)
  end
}
