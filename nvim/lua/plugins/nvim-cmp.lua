-- Completion Engine -- tab completion
-- from: hrsh7th/nvim-cmp
-- see docs: https://github.com/hrsh7th/nvim-cmp/blob/main/doc/cmp.txt
-- Reference: https://youtu.be/GuIcGxYqaQQ 
-- Reference: https://github.com/LunarVim/Neovim-from-scratch/blob/master/lua/user/cmp.lua
return {
    'hrsh7th/nvim-cmp',
    event = "InsertEnter", -- Completion engine
    dependencies = {
      'hrsh7th/cmp-buffer', -- buffer completion
      'hrsh7th/cmp-path', -- path completion
      'hrsh7th/cmp-cmdline', -- command line completion
      'hrsh7th/cmp-nvim-lsp', -- lsp suggested completion
      'hrsh7th/cmp-emoji', -- emoji completion
      'chrisgrieser/cmp-nerdfont', -- nerdfont icon completion
      -- Snippets (for tab completion) --
      'L3MON4D3/LuaSnip', -- Snippet engine
      'rafamadriz/friendly-snippets', -- more snippets to
    },
    config = function()
        local cmp_status_ok, cmp = pcall(require, "cmp")
        if not cmp_status_ok then
            return
        end

        local snip_status_ok, luasnip = pcall(require, "luasnip")
        if not snip_status_ok then
            return
        end

        local pairs_status_ok, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
        if not pairs_status_ok then
            return
        end

        require("luasnip/loaders/from_vscode").lazy_load()

        local check_backspace = function()
            local col = vim.fn.col "." - 1
            return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
        end
        --   פּ ﯟ   some other good icons
        local kind_icons = {
            Text = "",
            Method = "m",
            Function = "",
            Constructor = "",
            Field = "",
            Variable = "",
            Class = "",
            Interface = "",
            Module = "",
            Property = "",
            Unit = "",
            Value = "",
            Enum = "",
            Keyword = "",
            Snippet = "",
            Color = "",
            File = "",
            Reference = "",
            Folder = "",
            EnumMember = "",
            Constant = "",
            Struct = "",
            Event = "",
            Operator = "",
            TypeParameter = "",
        }
        -- find more here: https://www.nerdfonts.com/cheat-sheet

        cmp.setup {
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body) -- For `luasnip` users.
                end,
            },
            mapping = {
                ["<C-k>"] = cmp.mapping.select_prev_item(),
                ["<C-j>"] = cmp.mapping.select_next_item(),
                ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
                ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
                ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
                ["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
                ["<C-e>"] = cmp.mapping {
                    i = cmp.mapping.abort(),
                    c = cmp.mapping.close(),
                },
                -- Accept currently selected item. If none selected, `select` first item.
                -- Set `select` to `false` to only confirm explicitly selected items.
                ["<CR>"] = cmp.mapping.confirm { select = true },
                ["<Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif luasnip.expandable() then
                    luasnip.expand()
                elseif luasnip.expand_or_jumpable() then
                    luasnip.expand_or_jump()
                elseif check_backspace() then
                    fallback()
                else
                    fallback()
                end
            end, {
                "i",
                "s",
            }),
            ["<S-Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif luasnip.jumpable(-1) then
                    luasnip.jump(-1)
                else
                    fallback()
                end
            end, {
                "i",
                "s",
            }),
        },
        formatting = {
            fields = { "kind", "abbr", "menu" },
            format = function(entry, vim_item)
                -- Kind icons
                vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
                -- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
                vim_item.menu = ({
                    nvim_lsp = "[LSP]",
                    luasnip = "[Snippet]",
                    buffer = "[Buffer]",
                    path = "[Path]",
                })[entry.source.name]
                return vim_item
            end,
        },
        sources = {
            { name = "luasnip" },
            { name = "buffer" },
            { name = "path" },
            { name = "nvim_lsp" },
            { name = "emoji" },
            --{ name = "nerdfont" },
        },
        confirm_opts = {
            behavior = cmp.ConfirmBehavior.Replace,
            select = false,
        },
        window = {
            documentation = {
                border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
            },
        },
        experimental = {
            ghost_text = false,
            native_menu = false,
            },
        }

        -- For autopair completion:
        cmp.event:on(
          'confirm_done',
          cmp_autopairs.on_confirm_done()
        )

        -- For LSP completion:
        -- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

        require'lspconfig'.pyright.setup {
          capabilities = capabilities,
        }

        require'lspconfig'.lua_ls.setup {
          capabilities = capabilities,
        }

        require'lspconfig'.tsserver.setup {
          capabilities = capabilities,
        }

        require'lspconfig'.cssls.setup {
          capabilities = capabilities,
        }

        require'lspconfig'.astro.setup {
          capabilities = capabilities,
        }

        require'lspconfig'.html.setup {
          capabilities = capabilities,
        }

    end,
}
