-- ┌─┐┌─┐┌─┐┌┬┐┌─┐┬─┐┌─┐┌┬┐┌─┐┌─┐┌─┐ surfVim 
-- │ ┬├┤ └─┐ │ ├┤ ├┬┘├─┤ │ │ │├─┘└─┐ plugins manager
-- └─┘└─┘└─┘ ┴ └─┘┴└─┴ ┴ ┴ └─┘┴  └─┘ using Packer

-- Bootstrapping packer(installs plugins on first PackerSync)
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Plugins:
return require('packer').startup(function(use)
  -- Packer (managing itself)
  use 'wbthomason/packer.nvim'
  
  -- Functionality --
  -- Tabline (tab line)
  use 'kdheepak/tabline.nvim'
  -- Lualine (status line)
  use 'nvim-lualine/lualine.nvim'
  
  -- Tree-sitter (syntax highlighting)
  use {'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  -- Telescope (fuzzy finder)
  use {'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} },
    requires = { {'BurntSushi/ripgrep'} } -- for grep func
  }
  -- Nvim-Tree (file exporer)
  use {'kyazdani42/nvim-tree.lua',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
  }
  -- Completion --
  use 'hrsh7th/nvim-cmp' -- Completion engine
  use 'hrsh7th/cmp-buffer' -- buffer completion
  use 'hrsh7th/cmp-path' -- path completion
  use 'hrsh7th/cmp-cmdline' -- command line completion
  use 'hrsh7th/cmp-nvim-lsp' -- lsp suggested completion
  -- Snippets (for tab completion)
  use 'L3MON4D3/LuaSnip' -- Snippet engine
  use 'rafamadriz/friendly-snippets' -- more snippets to use
  
  -- Language Server Protocol --
  use {'williamboman/mason.nvim', -- LSP manager
    'williamboman/mason-lspconfig.nvim', -- lsp configs
    'neovim/nvim-lspconfig', -- neovim native lsp support
  }
  -- Nvim-Autopairs (auto pairs: ({["'``'"]}))
  use 'windwp/nvim-autopairs'
  
  -- Harpoon (project bookmarks)
  use 'ThePrimeagen/harpoon'
  
  -- UndoTree (undo history)
  use 'mbbill/undotree' -- noconfig
  
  -- Indent-Blankline (indent guidelines)
  use "lukas-reineke/indent-blankline.nvim"
  -- Guess-Indent (indent style detection)
  use 'nmac427/guess-indent.nvim'
  
  
  -- Render Code --
  -- Code_Runner (Popup Terminal)
  use { 'CRAG666/code_runner.nvim',
    requires = 'nvim-lua/plenary.nvim' }
  -- Glow (markdown preview)
  use 'ellisonleao/glow.nvim'
  -- Markdown-Preview (live markdown editing)
  use {'iamcco/markdown-preview.nvim', -- noconfig
    run = function() vim.fn["mkdp#util#install"]() end,
  }
  
  -- A E S T H E T I C -- 
  -- Dashboard (start page)
  use 'glepnir/dashboard-nvim'
  
  -- ColorSchemes: -- config in gesteratops/set.lua
  -- Gruvbox (theme)
  use 'ellisonleao/gruvbox.nvim'
  -- Dracula (theme)
  use 'Mofiqul/dracula.nvim'
  -- TokyoNight (theme)
  use 'folke/tokyonight.nvim'
  
  -- Other --
  -- Tetris (game)
  use 'alec-gibson/nvim-tetris'

  -- bootstrapping packer
  if packer_bootstrap then 
    require('packer').sync()
  end

end)
