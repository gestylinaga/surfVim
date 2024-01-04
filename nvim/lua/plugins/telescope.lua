-- Telescope -- fuzzy finder
-- from: nvim-telescope/telescope.nvim
-- see docs: https://github.com/nvim-telescope/telescope.nvim/tree/master/doc
return {'nvim-telescope/telescope.nvim',
  version = '0.1.x',
  event = "VeryLazy",
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
    { 'BurntSushi/ripgrep' }, -- for grep function
    { -- fuzzy finder (more efficient searching)
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
    }
  },
  opts = {
    extensions = {
      fzf = {
        fuzzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mode = 'smart_case',
      },
    },
  },
  config = function(opts)
    require('telescope'):setup(opts)
  end
}
