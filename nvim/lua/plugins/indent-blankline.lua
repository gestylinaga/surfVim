-- Indent-Blankline -- indent guidelines
-- from: lukas-reineke/indent-blankline.nvim
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
