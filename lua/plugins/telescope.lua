-- https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file#pickers
print('hello from telescope')
--- plugins/telescope.lua:
return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                              , branch = '0.1.x',
        cmd = 'Telescope',
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find Files" },
            { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Find a string" },
            { "<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "Help" },
            { "<leader>fk", "<cmd>Telescope keymaps<CR>", desc = "Find keymaps" },
            { "<leader>fb", "<cmd>Telescope git_branches<cr>", desc = "Checkout branch" },
        },
    --    lazy = true,
        dependencies = { 
            'nvim-lua/plenary.nvim',
            'andrew-george/telescope-themes'
        },
        config = function()
            local telescope = require "telescope"
            telescope.setup {
              pickers = {
                find_files = {
                  theme = "dropdown",
                  previewer = false,
                  hidden = true,
                },
              },
        }

            telescope.load_extension('themes')
            vim.keymap.set("n", "<leader>th", ":Telescope themes<CR>", {noremap = true, silent = true, desc = "Theme Switcher"})
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            -- This is your opts table
            require("telescope").setup {
              extensions = {
                ["ui-select"] = {
                  require("telescope.themes").get_dropdown {
                    -- even more opts
                  }

                  -- pseudo code / specification for writing custom displays, like the one
                  -- for "codeactions"
                  -- specific_opts = {
                  --   [kind] = {
                  --     make_indexed = function(items) -> indexed_items, width,
                  --     make_displayer = function(widths) -> displayer
                  --     make_display = function(displayer) -> function(e)
                  --     make_ordinal = function(e) -> string
                  --   },
                  --   -- for example to disable the custom builtin "codeactions" display
                  --      do the following
                  --   codeactions = false,
                  -- }
                }
              }
            }
            -- To get ui-select loaded and working with telescope, you need to call
            -- load_extension, somewhere after setup function:
            require("telescope").load_extension("ui-select")
        end
    },
}
