-- Indent-Blankline -- indent guidelines
-- from: lukas-reineke/indent-blankline.nvim

--[[ Uncomment to add end of line icons:
vim.opt.list = true
vim.opt.listchars:append "eol:"
--]]

-- OLD V@ SETUP
--require("indent_blankline").setup {
--    --show_end_of_line = true,
--}

-- NEW V3 SETUP
require("ibl").setup()

local iconsToCopyPaste = "  "
