return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require('mason-lspconfig').setup({
            ensure_installed = {'lua_ls', 'pyright'}
        })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require('lspconfig')
        lspconfig.lua_ls.setup({})
        lspconfig.pyright.setup({})

        vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
        vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
        vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        vim.keymap.set("n", "<leader>ge", vim.diagnostic.goto_next, {})
        vim.keymap.set("n", "<leader>gee", vim.diagnostic.setqflist, {})
    end
  }
}
