-- Barbar -- Tabline plugin with clickable tabs
return {
  "romgrk/barbar.nvim",
  event = "UIEnter",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {},
  version = "^1.0.0",
}
