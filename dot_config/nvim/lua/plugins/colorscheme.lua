return {
  -- {
  --   "saghen/blink.cmp",
  --   opts = {
  --     completion = {
  --       menu = { border = "rounded" },
  --       documentation = { window = { border = "rounded" } },
  --     },
  --     signature = { window = { border = "rounded" } },
  --   },
  -- },
  -- {
  --   "folke/which-key.nvim",
  --   opts = function(_, opts)
  --     vim.api.nvim_set_hl(0, "WhichKeyNormal", { bg = "#24273a" })
  --     vim.api.nvim_set_hl(0, "WhichKey", { bg = "#24273a" })
  --     vim.api.nvim_set_hl(0, "WhichKeyNormal", { bg = "#1e2030" })
  --     vim.api.nvim_set_hl(0, "WhichKey", { bg = "#1e2030" })
  --     vim.api.nvim_set_hl(0, "WhichKeyBorder", { fg = "#1e2030", bg = "#1e2030" })
  --     vim.api.nvim_set_hl(0, "WhichKeyTitle", { bg = "#494d64" })
  --
  --     return opts
  --   end,
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-storm",
    },
  },
}
