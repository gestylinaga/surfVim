-- ┌─┐┌─┐┌─┐┌┬┐┌─┐┬─┐┌─┐┌┬┐┌─┐┌─┐┌─┐ surfVim
-- │ ┬├┤ └─┐ │ ├┤ ├┬┘├─┤ │ │ │├─┘└─┐ vimrc
-- └─┘└─┘└─┘ ┴ └─┘┴└─┴ ┴ ┴ └─┘┴  └─┘ plugins managed by lazy.nvim

-- lazy.nvim plugin manager bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

--

vim.g.mapleader = " " -- "Space" key as leader

--

-- Plugins:
require("lazy").setup({

  -- Functionality --
  -- Tabline (tab line)
  'kdheepak/tabline.nvim',
  -- Lualine (status line)
  'nvim-lualine/lualine.nvim',

  -- Tree-sitter (syntax highlighting)
  {'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate'
  --   on first Sync:
  --build = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  },
  -- Telescope (fuzzy finder)
  {'nvim-telescope/telescope.nvim', version = '0.1.5',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'BurntSushi/ripgrep' } -- for grep func
  },
  -- Nvim-Tree (file exporer)
  {'kyazdani42/nvim-tree.lua',
    dependencies = {'kyazdani42/nvim-web-devicons', lazy = true},
  },
  -- Completion --
  'hrsh7th/nvim-cmp', -- Completion engine
  'hrsh7th/cmp-buffer', -- buffer completion
  'hrsh7th/cmp-path', -- path completion
  'hrsh7th/cmp-cmdline', -- command line completion
  'hrsh7th/cmp-nvim-lsp', -- lsp suggested completion
  'hrsh7th/cmp-emoji', -- emoji completion
  'chrisgrieser/cmp-nerdfont', -- nerdfont icon completion
  -- Snippets (for tab completion)
  'L3MON4D3/LuaSnip', -- Snippet engine
  'rafamadriz/friendly-snippets', -- more snippets to  

  -- Language Server Protocol --
  {'williamboman/mason.nvim', -- LSP manager
    'williamboman/mason-lspconfig.nvim', -- lsp configs
    'neovim/nvim-lspconfig', -- neovim native lsp support
  },
  -- Nvim-Autopairs (auto pairs: ({["'``'"]}))
  'windwp/nvim-autopairs',

  -- Harpoon (project bookmarks)
  {'ThePrimeagen/harpoon',
    branch = 'harpoon2'
  },

  -- UndoTree (undo history)
  'mbbill/undotree', -- noconfig

  -- Indent-Blankline (indent guidelines)
  'lukas-reineke/indent-blankline.nvim',
  -- Guess-Indent (indent style detection)
  'nmac427/guess-indent.nvim',


  -- Render Code --
  -- Code_buildner (Popup Terminal)
  'CRAG666/code_runner.nvim',
  -- Glow (markdown preview)
  'ellisonleao/glow.nvim',
  -- Markdown-Preview (live markdown editing)
  {'iamcco/markdown-preview.nvim', -- noconfig
    build = function() vim.fn["mkdp#util#install"]() end,
  },

  -- A E S T H E T I C -- 
  -- Dashboard (start page)
  --'glepnir/dashboard-nvim',

  -- ColorSchemes: -- config in gesteratops/set.lua
  -- Gruvbox (theme)
  --'ellisonleao/gruvbox.nvim',
  -- Dracula (theme)
  --'Mofiqul/dracula.nvim',
  -- TokyoNight (theme)
  'folke/tokyonight.nvim',

  -- Other --
  -- Tetris (game)
  --'alec-gibson/nvim-tetris',
  -- Astro (JS Framework)
  --'wuelnerdotexe/vim-astro' -- astro plugin

})

-- Running lazy.nvim with selected plugins
require("lazy").setup(plugins, {})
