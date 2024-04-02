local options = {
  suggestion = {
    enabled = true,
    auto_trigger = true,
    debounce = 75,
    keymap = {
      accept = "<M-l>",
      accept_word = false,
      accept_line = false,
      next = "<M-]>",
      prev = "<M-[>",
      dismiss = "<C-]>",
    }
  },
  filetypes = {},
  copilot_node_command = "node",
  server_opts_overrides = {},
}

require("copilot").setup(options)
require("copilot_cmp").setup()
