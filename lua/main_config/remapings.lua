vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>db", ":ls<CR>:bdelete<Space><C-r>=input('Delete buffer > ')<CR><CR>", {desc = "Select and delete buffer"})
vim.keymap.set("n", "<leader>gb", ":ls<CR>:buffer<Space><C-r>=input('Buffer > ')<CR><CR>", {desc = "Go to buffer"})
vim.keymap.set("n", "<leader>cs", ":enew<CR>:setlocal buftype=nofile bufhidden=hide<CR>", {desc = "Open scratch buffer"})
vim.keymap.set("n", "Q", "<nop>")
-- ignore macros
vim.keymap.set("n", "q", "<nop>")
-- move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "Move lines down"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "Move lines up"})
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {desc = "Format file"})
-- -- format python code with black
-- vim.keymap.set("n", "<C-f>f", ":!black %<CR>", {desc = "Format python with black"})


function Open_remap()
    vim.api.nvim_command('vsplit | wincmd l | edit ~/.config/nvim/lua/antonio_config/remapings.lua')
end
vim.api.nvim_set_keymap('n', '<leader>r',':lua Open_remap()<CR>', { noremap = true, silent = true, desc = "Open mappings"})
