require "paq" {
    "savq/paq-nvim", -- Let Paq manage itself

    "craftzdog/solarized-osaka.nvim",
    "JulioJu/neovim-qt-colors-solarized-truecolor-only",

    "junegunn/fzf",
    "junegunn/fzf.vim",
    -- "mfussenegger/nvim-lint",
    "dense-analysis/ale",
    "tpope/vim-commentary",
    "tpope/vim-repeat",
    "tpope/vim-unimpaired",
    "tridactyl/vim-tridactyl",
    "editorconfig/editorconfig-vim",
}

vim.cmd.colorscheme("solarized-osaka-night")

vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.tabstop = 4
vim.o.list = true
vim.o.incsearch = true
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.gdefault = true
vim.o.showmatch = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.backup = false
vim.o.swapfile = false
vim.o.undofile = true
vim.o.modeline = true
vim.o.wrap = false
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.cursorcolumn = true
vim.o.showmode = true
vim.o.showcmd = true
vim.o.ruler = true
vim.o.colorcolumn = 79
vim.o.textwidth = 79
vim.o.backspace = "indent,eol,start"
vim.o.wildmenu = true
vim.o.wildignore = "*.pyc"
vim.o.hidden = true
vim.o.scrolloff = 3
vim.o.keymap = "russian-jcukenwin"
vim.o.iminsert = 0
vim.o.imsearch = 0
vim.o.spelllang = "ru_yo,en_gb"
vim.o.pastetoggle = "<F2>"
vim.o.background = "dark"

vim.opt.formatoptions:remove { "t" }
vim.opt.listchars = {
    tab = "▹ ",
    eol = "↵",
    trail = "▿",
    extends = "›",
    precedes = "‹",
    nbsp = "␣"
}

vim.opt.grepprg = "rg --vimgrep"
vim.opt.grepformat = "%f:%l:%c:%m"

vim.g.mapleader = ","

vim.keymap.set('n', '<Leader>s', ':w<CR> <BAR> :source $MYVIMRC<CR>')
vim.keymap.set('n', '\\', '<Leader', { remap = true })
vim.keymap.set('n', '<Space>', '<Cmd>nohlsearch<CR>', { silent = true })
vim.keymap.set('n', '<Leader>l', '<Cmd>set list! relativenumber!<CR>', { silent = true })
vim.keymap.set({ 'n', 'v' }, '/', '/\\v')
for _, key in ipairs({ 'up', 'down', 'left', 'right' }) do
    vim.keymap.set({ 'n', 'v' }, '<' .. key .. '>', '<nop>')
end
vim.keymap.set({ 'i', 'n', 'v' }, '<F1>', '<ESC>')
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', '<Leader>s', '<Cmd>cclose<CR>', { silent = true })
vim.keymap.set('n', '<Leader>p', '<Cmd>set invpaste paste?<CR>')
vim.keymap.set('n', '<Leader>1', 'yypVr')
vim.keymap.set('n', '<Leader>P', 'gqip')
vim.keymap.set('n', '<Leader>w', ":%s/\\s\\+$// <CR> <BAR>:let @/=''<CR>")
vim.keymap.set('n', '<Leader>f', '<Cmd>Files<CR>', { silent = true })
vim.keymap.set('n', '<Leader>b', '<Cmd>Buffers<CR>', { silent = true })

vim.keymap.set('n', '<Leader>e', '<Plug>(ale_next_wrap)', { silent = true })
vim.keymap.set('n', '<Leader>E', '<Plug>(ale_previous_wrap)', { silent = true })

--[[
require('lint').linters_by_ft = {
  lua = { 'luacheck' }
}
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
--]]
--[[
vim.keymap.set('n', '<Leader>d', '<Cmd>Directories<CR>', { silent = true })
]]--
