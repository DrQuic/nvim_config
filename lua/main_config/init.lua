require("main_config.packer")
require("main_config.remapings")
require("main_config.set")
function R(name)
    require("plenary.reload").reload_module(name)
end

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
