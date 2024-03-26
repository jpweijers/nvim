return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { { "nvim-lua/plenary.nvim" }, { "nvim-telescope/telescope-ui-select.nvim" } },

    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
        file_ignore_patterns = {
          { "node%_modules/.*" },
          { ".*/node%_modules/.*" },
          { ".*/dist/.*" },
        },
      })
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
      vim.keymap.set("n", "<leader>fk", builtin.keymaps, {})
      vim.keymap.set("n", "<leader>fs", builtin.builtin, {})
      vim.keymap.set("n", "<leader>sw", builtin.lsp_dynamic_workspace_symbols, {})
      vim.keymap.set("n", "<leader>sd", builtin.lsp_document_symbols, {})

      require("telescope").load_extension("ui-select")
    end,
  },
}
