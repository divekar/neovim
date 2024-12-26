print('Hello from lua/plugins!')
return require('lazy').setup({
    require('plugins.alpha'),
    require('plugins.catppuccin'),
    require('plugins.telescope'),
    require('plugins.rosepine'),
    require('plugins.tokyotonight'),
    require('plugins.treesitter'),
    require('plugins.neotree'),
    require('plugins.lualine'),
    require('plugins.lsp-config'),
})


