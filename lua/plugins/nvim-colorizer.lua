-- Nvim-Colorizer -- In-Code Color Highlighter
return {
  "NvChad/nvim-colorizer.lua",
  ft = {
    "css",
    "scss",
    "html",
    "javascript",
  },
  opts = {
    filetypes = {
      "css",
      "javascript",
    },
    user_default_options = {
      names = false,
      css = true,
      sass = {
        enable = true,
        parsers = {
          "css"
        },
      },
    },
  },
  config = function(opts)
    require("colorizer"):setup(opts)
    vim.cmd([[ColorizerToggle]])
  end
}
