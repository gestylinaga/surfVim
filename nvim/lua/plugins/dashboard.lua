-- Dashboard -- Splash Page
return {
  "glepnir/dashboard-nvim",
  event = "VimEnter",
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = function()
    local logo = [[
        ██████  █    ██  ██▀███    █████▒██▒   █▓ ██▓ ███▄ ▄███▓
      ▒██    ▒  ██  ▓██▒▓██ ▒ ██▒▓██   ▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
      ░ ▓██▄   ▓██  ▒██░▓██ ░▄█ ▒▒████ ░ ▓██  █▒░▒██▒▓██    ▓██░
        ▒   ██▒▓▓█  ░██░▒██▀▀█▄  ░▓█▒  ░  ▒██ █░░░██░▒██    ▒██ 
      ▒██████▒▒▒▒█████▓ ░██▓ ▒██▒░▒█░      ▒▀█░  ░██░▒██▒   ░██▒
      ▒ ▒▓▒ ▒ ░░▒▓▒ ▒ ▒ ░ ▒▓ ░▒▓░ ▒ ░      ░ ▐░  ░▓  ░ ▒░   ░  ░
      ░ ░▒  ░ ░░░▒░ ░ ░   ░▒ ░ ▒░ ░        ░ ░░   ▒ ░░  ░      ░
      ░  ░  ░   ░░░ ░ ░   ░░   ░  ░ ░        ░░   ▒ ░░      ░   
            ░     ░        ░                  ░   ░         ░   
                                             ░                  
    ]]

    logo = string.rep("\n", 3) .. logo .. "\n\n"

    local opts = {
      theme = "doom",
      hide = {
        -- affects lualine
        --statusline = false,
      },
    config = {
      header = vim.split(logo, "\n"),
      center = {
        { action = "Telescope find_files", desc = " Find File", icon = "  ", key = "SPC ff" },
        { action = "ene | startinsert", desc = " New File", icon = "󰈔  ", key = "SPC nf" },
        { action = "Telescope oldfiles", desc = " Recent File", icon = "  ", key = "SPC fr" },
        { action = "NvimTreeOpen", desc = " File Explorer Tree", icon = "  ", key = "SPC tt" },
        { action = "Telescope help_tags", desc = " Search Help Tags", icon = "󰘥  ", key = "SPC fh" },
        { action = "Telescope commands", desc = " Search Commands", icon = "  ", key = "SPC fc" },
        { action = "Lazy", desc = " Lazy Menu", icon = "󰒲  ", key = "SPC lz" },
        { action = "qa", desc = " Quit", icon = "  ", key = "SPC qq" },
      },
      footer = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        return { "🌊 surfVim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
      end,
    },
    }

    -- closes lazy and re-opens when the dashboard is ready
  if vim.o.filetype == "lazy" then
    vim.cmd.close()
    vim.api.nvim_create_autocmd("User", {
      pattern = "DashboardLoaded",
      callback = function()
        require("lazy").show()
      end,
    })
  end

  return opts
end,
}
