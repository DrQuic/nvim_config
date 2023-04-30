require('telescope').setup({
    file_ignore_patterns = { "node_modules", ".venv", "target"},
    extensions = {
            fzf = {
              fuzzy = true,                    -- false will only do exact matching
              override_generic_sorter = true,  -- override the generic sorter
              override_file_sorter = true,     -- override the file sorter
              case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
            },
      }
    -- extensions = {
    --      fzy_native = {
    --             override_generic_sorter = false,
    --             override_file_sorter = true,
    --         }
   -- -     },
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>?', builtin.oldfiles, {})
vim.keymap.set('n', '<leader><space>', builtin.buffers, {})
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.git_files, {})
vim.keymap.set('n', '<leader>tf', ':Telescope current_buffer_fuzzy_find<CR>',{})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

require('telescope').load_extension('fzf')


