-- Indent-Blankline -- indent guidelines
-- from: lukas-reineke/indent-blankline.nvim

--[[ options to add end of line icons:
vim.opt.list = true
vim.opt.listchars:append "eol:"
--]]

--local iconsToCopyPaste = "  "

return {
  "lukas-reineke/indent-blankline.nvim",
  event = "VeryLazy",
  main = "ibl",

  opts = {
    enabled = true,
    scope = { enabled = false },
    exclude = {
      filetypes = {
        "help",
        "dashboard",
        "lazy",
      },
    },
  },
}
