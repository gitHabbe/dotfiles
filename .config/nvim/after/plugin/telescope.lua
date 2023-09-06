require('telescope').setup({
        extensions = {
            fzf = {
              fuzzy = true,                    -- false will only do exact matching
              override_generic_sorter = true,  -- override the generic sorter
              override_file_sorter = true,     -- override the file sorter
              case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                             -- the default case_mode is "smart_case"
           }
        },
        defaults = {
                layout_config = {
                        vertical = {
                                width = 0.9
                        }
                }
        }
})

local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})

require('telescope').load_extension('fzf')
