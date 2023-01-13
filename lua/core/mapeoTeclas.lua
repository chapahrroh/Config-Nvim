--Abrebiaciones--

local map         = vim.api.nvim_set_keymap
local default_ops = {noremap = true, silent = true}
local cmd         = vim.cmd
local g           = vim.g

--Tecla lider--

g.mapleader = " "

--Comandos Generales--

map('n',  '<leader>w',         ':w<CR>', default_ops)
map('n',  '<leader>q',         ':q<CR>', default_ops)
map('n', '<leader>ss',        ':q!<CR>', default_ops) 
map('n',         'tt',        ':t.<CR>', default_ops)
map('n',  '<leader>h',':nohlsearch<CR>', default_ops) 

--Comandos Buffer

map('n', '<leader>2', ':BufferLineCyclePrev<CR>', default_ops)
map('n', '<leader>3', ':BufferLineCycleNext<CR>', default_ops)
map('n', '<leader>1',       ':NvimTreeFocus<CR>', default_ops)
