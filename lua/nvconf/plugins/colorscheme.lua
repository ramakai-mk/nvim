return{
  {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()

    require("tokyonight").setup({
      style = "moon",
    })

    vim.cmd[[colorscheme tokyonight-moon]]

  end,
  },
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = {
      extra_groups = {
        "FloatBorder",
        "LSPInfoBorder",
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "NormalFloat",
        "NotifyDEBUGBody",
        "NotifyDEBUGBorder",
        "NotifyERRORBody",
        "NotifyERRORBorder",
        "NotifyINFOBody",
        "NotifyINFOBorder",
        "NotifyTRACEBody",
        "NotifyTRACEBorder",
        "NotifyWARNBody",
        "NotifyWARNBorder",
        "TelescopeBorder",
        "TelescopePreviewNormal",
        "TelescopePromptNormal",
        "TelescopeResultsNormal",
        "WhichKeyFloat",
      },
      exclude_groups = {},
    },
    keys = {
      {
        "<Leader>ut",
        "<Cmd>TransparentToggle<Cr>",
        desc = "Toggle Transparency",
      },
    },
  },
}
