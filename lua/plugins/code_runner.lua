-- Code Runner config from: CRAG666/code_runner.nvim
-- see doc: https://github.com/CRAG666/code_runner.nvim/blob/main/doc/code_runner.txt
return {
  "CRAG666/code_runner.nvim",
  keys = {
    {"<leader>rr", ":RunCode<CR>", desc = "Run Code"},
  },
  opts = {
    mode = "float", --other opts: term, toggle, float, tab, toggleterm, buf
    focus = true, -- start in focus

    float = {
        border = "rounded",

        -- num from 0-1 for measurements:
        height = 0.5,
        width = 0.5,
        x = 0.5,
        y = 0.5,

        -- hightlight group
        border_hl = "FloatBorder",
        float_hl = "Normal",

        -- transparency
        blend = 30, -- 0-100
    },

    filetype_path = "",
    filetype = {
        python = "python3 -u",
        lua = "lua -W",
        html = "firefox &lt;filename>.html ",
        javascript = "node",
        rust = "cargo run",
        ruby = "ruby",
        go = "go run",
        typescript = "deno run",
        --java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
        --rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
    },
    project_path = "",
    project = {},
  }
}
