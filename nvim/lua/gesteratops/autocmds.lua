-- ┌─┐┌─┐┌─┐┌┬┐┌─┐┬─┐┌─┐┌┬┐┌─┐┌─┐┌─┐ surfVim
-- │ ┬├┤ └─┐ │ ├┤ ├┬┘├─┤ │ │ │├─┘└─┐ neovim
-- └─┘└─┘└─┘ ┴ └─┘┴└─┴ ┴ ┴ └─┘┴  └─┘ autocmd's

-- Sass silent auto compile on write
vim.api.nvim_create_autocmd (
  { "BufWritePost" },
  { pattern = { "*.sass", "*.scss" }, command = "silent !sass %:p %:r.css"}
)

-- Nvim-Tree open on startup
local function open_nvim_tree(data)
  -- if buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  -- change to the directory
  vim.cmd.cd(data.file)

  -- open tree
  require("nvim-tree.api").tree.open()
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
