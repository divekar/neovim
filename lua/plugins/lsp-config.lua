return {
    {
        "williamboman/mason.nvim",
        config = function()
            require('mason').setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = { "lua_ls", "clangd"}
            })
        end
    },
    {
       "neovim/nvim-lspconfig",
       config = function()
            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup({})
            lspconfig.clangd.setup({})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
            vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {})
            vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
            vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
       end
    }
}
