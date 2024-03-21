local configs = require "nvchad.configs.lspconfig"

local util = require "lspconfig/util"

local servers = {
  html = {},
  cssls = {},
  -- go
  gopls = {
    cmd = { "gopls" },
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    settings = {
      gopls = {
        completeUnimported = true,
        usePlaceholders = true,
        analyses = {
          unusedparams = true,
        },
      },
    },
  },
  -- javascript/typesctipt
  tsserver = {},
  --php
  intelephense = {
    filetypes = { "php" },
  },
  -- python
  pyright = {
    filetypes = { "python" },
  },
  -- lua
  lua_ls = {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
  },
}

for name, opts in pairs(servers) do
  opts.on_init = configs.on_init
  opts.on_attach = configs.on_attach
  opts.capabilities = configs.capabilities

  require("lspconfig")[name].setup(opts)
end
