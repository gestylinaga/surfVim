-- Telescope -- fuzzy finder
-- from: nvim-telescope/telescope.nvim
-- see docs: https://github.com/nvim-telescope/telescope.nvim/tree/master/doc
return {'nvim-telescope/telescope.nvim',
  version = '0.1.x',
  event = "VeryLazy",
  dependencies = {
    'nvim-lua/plenary.nvim',
    'BurntSushi/ripgrep' } -- for grep func
}
