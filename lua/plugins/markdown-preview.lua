-- Markdown-Preview - Live preview
return {
  "iamcco/markdown-preview.nvim",
  ft = "markdown",
  keys = {
    {"<leader>mm", ":MarkdownPreview<CR>", desc = "Markdown preview"},
    {"<leader>mo", ":MarkdownPreviewToggle<CR>", desc = "Markdown preview toggle"},
    {"<leader>mq", ":MarkdownPreviewStop<CR>", desc = "Markdown preview stop"},
  },
  build = {
    function()
      vim.fn["mkdp#util#install"]()
    end
  }
}
