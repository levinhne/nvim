vim.cmd [[
      function OpenMarkdownPreview (url)
        execute "silent ! brave " . a:url
      endfunction
    ]]
vim.g.mkdp_browserfunc = "OpenMarkdownPreview"
local plugins = {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}

return plugins
