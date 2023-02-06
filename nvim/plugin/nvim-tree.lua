-- Nvim-Tree file explorer from: kyazdani42/nvim-tree.lua
-- for docs:
-- https://github.com/kyazdani42/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt

require("nvim-tree").setup({
  --open_on_setup = true,
  sort_by = "case_sensitive",
  open_on_tab = true,

  view = {
    adaptive_size = true,
    width = 50,
    side = "right",
    preserve_window_proportions = true;
    number = true;
    relativenumber = true;
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },

  renderer = {
    group_empty = true,

    icons = {
      webdev_colors = true,
      git_placement = "before",
      padding = " ",
      symlink_arrow = " ➛ ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        bookmark = "",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "",
          untracked = "",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },

  filters = {
    dotfiles = false,
  },

  actions = {
    open_file = {
        quit_on_open = true,
        resize_window = false,
    },
  },
})
