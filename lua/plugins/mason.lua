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
        "golangci_lint_ls",
        -- protobuf
        "bufls",

        -- python
        "black",
        "debugpy",
        "mypy",
        "ruff",
        "pyright",

        -- php
        "intelephense",

        -- javascript
        "tsserver",
        "eslint",
        "js-debug-adapter",
        "prettier",
        "typescript-language-server",

        -- css
        "tailwindcss",
      },
    },
  },
}

return plugins
