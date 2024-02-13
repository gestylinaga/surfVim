<!-- TODO:
    - update screenshots with new colorscheme
    - add lsp remaps
    - add Table of contents if file gets too long
        - syntax: `1. [name](#headerName)`
-->
# 🌊 surfVim
![surfVim Preview Screenshot](screenshots/dashboard_screenshot.webp)

🌊 ***surfVim***, is a personalized **Neovim** distribution built From Scratch. 
It contains a collection of remaps/keybinds, configs, and plugins 
to provide a complete and comfortable IDE experience.
All conveniently bundled together for EZ deployment.

Powered by [💤 lazy.nvim](https://github.com/folke/lazy.nvim) as a plugin 
manager.

See `CHANGELOG` for detailed changes / commit history.

```lua
-- Showing off Some Example Lua Code: --
local text = "Written completely in Lua! " 
local text2 = "An exercise in learning the Lua coding language."

function helloWorld()
    io.write(text .. text2)
end

helloWorld()
```

## 🔌 Features added via plugins:
- 🎨 Improved Syntax Highlighting ([nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter))
- ➡️  Indent Style Auto-Detection and Visual Guidelines ([guess-indent](https://github.com/NMAC427/guess-indent.nvim) 
& [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim))
- 📖 Tab Completion ([nvim-cmp](https://github.com/hrsh7th/nvim-cmp))
- ✌️  Auto ({["'``'"]}) pair completion ([nvim-autopairs](https://github.com/windwp/nvim-autopairs))
- 🤖 LSP Support ([nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) 
& [mason](https://github.com/williamboman/mason.nvim))
- 🔭 Fuzzy Finding for Files ([telescope](https://github.com/nvim-telescope/telescope.nvim))
- 📂 File Explorer/Tree ([nvim-tree](https://github.com/nvim-tree/nvim-tree.lua))
- 🔖 File Bookmarks for specific folders ([harpoon](https://github.com/ThePrimeagen/harpoon))
- 🖥️ Popup Terminal Runner ([code_runner](https://github.com/CRAG666/code_runner.nvim))
- 📺 Popup Markdown Preview ([glow](https://github.com/ellisonleao/glow.nvim))
- 👓 Live Markdown Editing ([markdown-preview](https://github.com/iamcco/markdown-preview.nvim))
- ➖ Fancy Improved Statusline ([lualine](https://github.com/nvim-lualine/lualine.nvim))
- 🖼️ Fancy Landing Page and Colorschemes ([dashboard-nvim](https://github.com/nvimdev/dashboard-nvim), 
[rose-pine](https://github.com/rose-pine/neovim), & [tokyonight](https://github.com/folke/tokyonight.nvim))
- 🖍️ Live In-Code Color Preview ([nvim-colorizer](https://github.com/norcalli/nvim-colorizer.lua))
- ↔️  Side-by-side git diff viewer ([diffview](https://github.com/sindrets/diffview.nvim))

## 🤖 Prerequisites:
- [A True Color Terminal](https://gist.github.com/kurahaupo/6ce0eaefe5e730841f03cb82b061daa2#now-supporting-true-color)
    - for proper color display
- [Neovim](https://github.com/neovim/neovim) - Base Text Editor
    - Version >=0.9.0
- [Nerd Font](https://github.com/ryanoasis/nerd-fonts) - Patched Fonts
    - any Nerd Font to properly display glyphs/icons
- [Ripgrep](https://github.com/BurntSushi/ripgrep) - Improved grep
    - needed for Telescope fuzzy finding
- [NPM/Node](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm) -
NodeJS Package Manager
    - needed for some LSP servers

## 📦 Installation
1. Backup your existing Neovim config (only necessary if **NOT** starting from
scratch)
```sh
# backup main config directory
mv ~/.config/nvim{,.bak}

# optional backups
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

2. Clone this repo into your `.config` directory as `nvim`
```sh
git clone https://github.com/gestylinaga/surfvim ~/.config/nvim
```

3. Start Neovim - Plugins / LSP Servers / Syntax Highlighting will automatically
install
```sh
nvim
```

4. Post-Install Checks (commands run inside neovim)
```sh
# check health of install
:checkhealth lazy

# to check plugins or manually update plugins
:Lazy
```

## 📸 Screenshots:
<details>
<summary><b>Click to see screenshots</b></summary>

All screenshots showing `tokyonight-night` color scheme.

Plugin shown: **lazy** plugins UI
![lazy.nvim screenshot](screenshots/lazy_screenshot.webp)

Plugin shown: **telescope** `find_files` feature
![telescope screenshot](screenshots/telescope_screenshot.webp)

Plugins shown: **glow** markdown preview & **nvim-tree** file tree
![glow screenshot](screenshots/glow_screenshot.webp)
</details>

## ⌨️ Usage Cheatsheet:
<details>
<summary><b>Click to see keymaps</b></summary>

| Action | Modifier | Key combo |
| ------ | ----- | ----- |
| **Basics**
| new empty file | Spc | n f
| quit all buffers | Spc | q q
| **Splits**
| vertical split | Spc | v s 
| horizontal split | Spc | h s 
| **Marks**
| set mark | m | any key 
| goto mark | ' | key selected 
| **Harpoons (project bookmarks)** 
| list bookmarks | Spc | h h 
| add bookmark | Spc | h t 
| goto bookmark 1 | Ctrl | u
| goto bookmark 2 | Ctrl | i
| goto bookmark 3 | Ctrl | o
| goto bookmark 4 | Ctrl | p
| **Window Focus** 
| switch focus down   | Ctrl | j
| switch focus up     | Ctrl | k
| switch focus left   | Ctrl | h
| switch focus right  | Ctrl | l
| **Tabs**
| new tab    | Ctrl | Home
| next tab   | Ctrl | PageDown
| prev tab   | Ctrl | PageUp
| close tab  | Ctrl | End
| **File Tree/Explorer**
| toggle tree  | Spc | t t 
| open tree    | Spc | t o
| close tree   | Spc | t q
| **Fuzzy Finder**
| telescope builtins        | Spc | f t
| fuzzy find files          | Spc | f f
| grep find word            | Spc | f g
| find recent files         | Spc | f r
| find help                 | Spc | f h
| find commands             | Spc | f c
| find/switch colorscheme   | Spc | c s 
| **Popup Terminal**
| open code runner  | Spc | r r
| **Popup Markdown Preview**
| open glow         | Spc | g g
| **Live Markdown Preview**
| open live preview    | Spc | m m
| toggle/open preview  | Spc | m o
| close preview        | Spc | m q
| **Git Diff View**
| open diff view   | Spc | d o
| close diff view  | Spc | d q
| git file history | Spc | d h
</details>

## ⚡ References:
Project inspired by:
- [🚀 Spacevim](https://spacevim.org/), another 'vim distribution'
- [💤 LazyVim](https://github.com/LazyVim/LazyVim), another 'vim distribution' 
powered by the [💤 lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager
- [🌙 Lunarvim](https://github.com/LunarVim/LunarVim) another 'vim distribution', the creater documented the 'Neovim From Scratch' process here:
    - [youtube series](https://youtube.com/playlist?list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ)
    - [github page](https://github.com/LunarVim/Neovim-from-scratch)
