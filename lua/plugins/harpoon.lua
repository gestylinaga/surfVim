-- Harpoon -- project bookmarks
return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("harpoon"):setup()
  end,
  keys = {
    {"<leader>ht", function() require("harpoon"):list():append() end, desc = "harpoon file"},
    {"<leader>hh", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "harpoon quick menu"},
    {"<C-u>", function() require("harpoon"):list():select(1) end, desc = "harpoon to file 1"},
    {"<C-i>", function() require("harpoon"):list():select(2) end, desc = "harpoon to file 2"},
    {"<C-o>", function() require("harpoon"):list():select(3) end, desc = "harpoon to file 3"},
    {"<C-p>", function() require("harpoon"):list():select(4) end, desc = "harpoon to file 4"},
    {"<C-y>", function() require("harpoon"):list():select(5) end, desc = "harpoon to file 5"},
  },
}
