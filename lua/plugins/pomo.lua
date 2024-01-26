return {
  "gestylinaga/pomo.nvim",
  dependencies = {
    "rcarriga/nvim-notify",
  },
  cmd = {
    "PomoStart",
    "PomoCheck",
    "PomoStop"
  },
  config = function()
    require("pomo").setup({})
  end
}
