local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua
        "lua-language-server",
        "stylua",

        -- go
        "gopls",
        "golangci-lint-langserver",
        -- protobuf
        "buf-language-server",

        -- python
        "black",
        "debugpy",
        "mypy",
        "ruff",
        "pyright",

        -- php
        "intelephense",

        -- javascript
        "deno",
        "eslint_lsp",
        "js-debug-adapter",
        "prettier",
        "typescript-language-server",

        -- css
        "tailwindcss-language-server",
      },
    },
  },
}

return plugins
