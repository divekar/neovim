-- https://github.com/catppuccin/nvim
-- ~/.config/nvim/lua/plugins/catppuccin.lua
return {
  'catppuccin/nvim',
  name = 'catppuccin',
  config = function()
    require('catppuccin').setup({
      flavour = 'mocha', -- Choose your flavour: latte, frappe, macchiato, mocha
      -- Additional configuration options
	    -- background = { -- :h background
		-- light = "latte",
		-- dark = "mocha",
	    -- },
    })
    vim.cmd('colorscheme catppuccin')
  end
}
