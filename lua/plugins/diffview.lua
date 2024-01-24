-- Simple, single tabpage interface for viewing git diffs
return {
  "sindrets/diffview.nvim",
  keys = {
    {"<leader>do", ":DiffviewOpen<CR>", desc = "Open Diffview"},
    {"<leader>dh", ":DiffviewFileHistory<CR>", desc = "Diffview file history"},
    {"<leader>dq", ":DiffviewClose<CR>", desc = "Diffview close"},
  },
}
