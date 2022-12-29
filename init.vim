

"   ____ _                               _
"  / ___| |__   __ _ _ __   __ _  __   _(_)_ __ ___  _ __ ___
" | |   | '_ \ / _` | '_ \ / _` | \ \ / / | '_ ` _ \| '__/ __|
" | |___| | | | (_| | |_) | (_| |  \ V /| | | | | | | | | (__
"  \____|_| |_|\__,_| .__/ \__,_|   \_/ |_|_| |_| |_|_|  \___|
"                   |_|

"/////////////////////////////////////////////////////////////////////////////
"configuraciones iniciales
"////////////////////////////////////////////////////////////////////////////

syntax on
set number relativenumber
set nu rnu
set mouse=a
set sw=2

"" trabajo de tabulador
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
filetype indent on

set numberwidth=1
set nowrap
set noswapfile
set nobackup
set incsearch
set ignorecase
set clipboard=unnamedplus
set encoding=UTF-8
set cursorline
set termguicolors
set colorcolumn=120
highlight ColoColum ctermbg=0 guibg=lightgrey


"/////////////////////////////////////////////////////////////////////////////
"Instalacion de pluguins
"////////////////////////////////////////////////////////////////////////////

call plug#begin('/home/programador/.config/nvim/plugged')

Plug 'morhetz/gruvbox'                          "tema de colores
Plug 'vim-airline/vim-airline'                  "barra airline
Plug 'vim-airline/vim-airline-themes'            "thema para barra airline
Plug 'lilydjwg/colorizer'                       "colorea comandos de colorea

"LSP
Plug 'neovim/nvim-lspconfig'

"cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'scrooloose/nerdtree'                      "menu de carpetas

 

Plug 'jiangmiao/auto-pairs'                     "enpareja parentesis


Plug 'mhinz/vim-signify'                        "marca nuevas lineas
Plug 'Yggdroot/indentLine'                      "marca indentaciones
Plug 'tpope/vim-fugitive'                       "pluguin de git
Plug 'preservim/nerdcommenter'                  "añade comentarios auto
"Plug 'mattn/emmet-vim'                          "plantilla html-ccs
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  "resalta archvos en nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'              "seguimiento de git en nerdtree
Plug 'ryanoasis/vim-devicons'                   "iconos para nvim


call plug#end()

"/////////////////////////////////////////////////////////////////////////////
"Configuracion de Tema
"/////////////////////////////////////////////////////////////////////////////

" tema general
set background=dark
let ayucolor="dark"
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox

"tema de barra airline
let g:airline_theme='wombat'
let g:airline_powerline_fonts=1 

"//////////////////////////////////////////////////////////////////////////
"configuracion de atajos de teclado
"//////////////////////////////////////////////////////////////////////////

let mapleader = " "   " definicion de tecla lider, este caso barra espaciadora

"comaondo para actualizar NVIM
nmap <F5> :source /home/programador/.config/nvim/init.vim<CR>   
vmap <F5> :source /home/programador/.config/nvim/init.vim<CR>  

"Comando de gurardar
inoremap <leader>w <ESC>:w<CR>         
nnoremap <leader>w :w<CR>         
vnoremap <leader>w <ESC>:w<CR>         
"comando de  salir
nnoremap <leader>q :q<CR>         
"Comando para abrir NERDTREE
nnoremap <leader>\ :NERDTree<CR> 


set completeopt=menu,menuone,noselect


"LSP configuracion


lua << EOF

-- Set up nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Set up lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  }
 -- local capabilities = require('cmp_nvim_lsp').default_capabilities()
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['html'].setup {
    capabilities = capabilities
  }


EOF

