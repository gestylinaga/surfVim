-- Telescope -- fuzzy finder
-- from: nvim-telescope/telescope.nvim
-- see docs: https://github.com/nvim-telescope/telescope.nvim/tree/master/doc
return {'nvim-telescope/telescope.nvim',
  version = '0.1.x',
  cmd = {
    "Telescope",
    "Telescope find_files",
    "Telescope oldfiles",
    "Telescope help_tags",
    "Telescope commands",
  },
  keys = {
    {"<leader>ft", ":Telescope<CR>", desc = "Telescope builtins"},
    {"<leader>ff", ":Telescope find_files<CR>", desc = "Telescope find files"},
    {"<leader>fg", ":Telescope live_grep<CR>", desc = "Telescope live grep"},
    {"<leader>fr", ":Telescope oldfiles<CR>", desc = "Telescope recent files"},
    {"<leader>cs", ":Telescope colorscheme<CR>", desc = "Telescope color schemes"},
    {"<leader>fh", ":Telescope help_tags<CR>", desc = "Telescope help tags"},
    {"<leader>fc", ":Telescope commands<CR>", desc = "Telescope command list"},
  },
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
