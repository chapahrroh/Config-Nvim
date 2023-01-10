--Abrebiaciones--

local cmd  = vim.cmd
local exec = vim.api.nvim_exec
local fn   = vim.fn
local opt  = vim.opt

--General--

opt.number         = true
opt.relativenumber = true
opt.cursorline     = true
opt.colorcolumn    = "120"
opt.showcmd        = true
opt.laststatus     = 2
opt.autowrite      = true
opt.autoread       = true

--espacios del tab--

opt.tabstop        = 4
opt.shiftwidth     = 4
opt.shiftround     = true
opt.expandtab      = true 
