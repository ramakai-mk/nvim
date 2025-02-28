return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile"},
  build = ":TSUpdate",
  dependecies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    --import treesitter
    local treesitter = require("nvim-treesitter.configs")

    --configure treesitter
    treesitter.setup({
      highlight = {
        enable = true,
      },
      --enable indentation
      indent = {enable = true },
      --enable autogging
      autotag = {
        enable = true,
      },
      --language parsers
      ensure_installed = {
        "c",
        "lua",
        "rust",
        "bash",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end
}
