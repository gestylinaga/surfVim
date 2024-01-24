-- Glow - Markdown Preview
-- from: ellisonleao/glow.nvim
return {
  "ellisonleao/glow.nvim",
  ft = "markdown",
  config = true,
  keys = {
    {"<leader>gg", ":Glow<CR>", desc = "Glow markdown preview"}
  },
  opts = {
    border = "rounded",
    style = "dark",
    width = 120
  },
}
