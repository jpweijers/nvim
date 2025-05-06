-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = { "html", "cssls", "ts_ls", "eslint", "denols", "lua_ls", "prismals", "pylsp", "volar" }
local formatters = { "prettier" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  })
end

lspconfig.denols.setup({
  on_attach = on_attach,
  root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
})

lspconfig.ts_ls.setup({
  on_attach = on_attach,
  root_dir = lspconfig.util.root_pattern("package.json"),
  single_file_support = false,
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = "/Users/jpweijers/.nvm/versions/node/v20.13.1/lib/node_modules/@vue/typescript-plugin",
        languages = { "vue" },
      },
    },
  },
  filetypes = {
    "vue",
  },
})

lspconfig.volar.setup({})

require("mason").setup({
  ensure_installed = servers
})

require("mason-lspconfig").setup({
  ensure_installed = servers
})

require("mason-tool-installer").setup({
  ensure_installed = formatters
})
