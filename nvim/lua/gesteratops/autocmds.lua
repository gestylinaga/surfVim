-- ┌─┐┌─┐┌─┐┌┬┐┌─┐┬─┐┌─┐┌┬┐┌─┐┌─┐┌─┐ surfVim
-- │ ┬├┤ └─┐ │ ├┤ ├┬┘├─┤ │ │ │├─┘└─┐ neovim
-- └─┘└─┘└─┘ ┴ └─┘┴└─┴ ┴ ┴ └─┘┴  └─┘ autocmd's

-- Sass silent auto compile on write
vim.api.nvim_create_autocmd (
  { "BufWritePost" },
  { pattern = { "*.sass", "*.scss" }, command = "silent !sass %:p %:r.css"}
)
