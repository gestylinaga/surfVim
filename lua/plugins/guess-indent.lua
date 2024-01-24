-- Guess-Indent - indent style detection
-- from: NMAC427/guess-indent.nvim
return {
  "nmac427/guess-indent.nvim",
  event = "VeryLazy",
  opts = {
    auto_cmd = true,  -- Set to false to disable automatic execution
    -- A list of filetypes for which the auto command gets disabled:
    filetype_exclude = {
      "netrw",
      "tutor",
    },
    -- A list of buffer types for which the auto command gets disabled:
    buftype_exclude = {
      "help",
      "nofile",
      "terminal",
      "prompt",
    }
  }
}
