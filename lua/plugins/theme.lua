return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catpuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        integrations = {
          neotree = true,
          mason = true,
        },
        highlight_overrides = {
          NeoTreeNormalNC = { fg = "ffffff", bg = "000000" },
        },
      })
      vim.cmd.colorscheme("catppuccin-latte")
    end,
  },
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   name = "tokyonight",
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme("tokyonight-day")
  --   end,
  -- },
}
