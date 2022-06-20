call plug#begin(stdpath('data') . '/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " Plug for navigator on nvim
Plug 'rafi/awesome-vim-colorschemes'  " Plug for theme colors schemes
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Plug for support languages autocomplete
Plug 'preservim/nerdcommenter'  "Plug for Comment multi line 
Plug 'nvim-lua/plenary.nvim'  " Plug for Telescope searcher
Plug 'nvim-telescope/telescope.nvim'

"Plug 'itchyny/lightline.vim' " Plug status bar but is better barline lightline
"Plug 'liuchengxu/eleline.vim' " Plug for status line that works with coc
Plug 'tamton-aquib/staline.nvim' " Plug for status line better

Plug 'neovim/nvim.net'  " Plug for .NET
Plug 'OmniSharp/omnisharp-vim' " Plug for .NET C#
Plug 'puremourning/vimspector' " Plug for Debugging program
Plug 'tpope/vim-dadbod' " Plug install for SQl need coc-db
Plug 'terryma/vim-multiple-cursors' " Plug for Multiople cursors
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'seblj/nvim-tabline'
Plug 'ahonn/resize.vim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'petertriho/nvim-scrollbar'
Plug 'kevinhwang91/nvim-hlslens'


" Default plugs 

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

call plug#end()

set mouse=a

source ~/.config/nvim/custom-confs.vim
source ~/.config/nvim/coc-config.vim
source ~/.config/nvim/config.vim
source ~/.config/nvim/awesome-config.vim
source ~/.config/nvim/eleline.vim
source ~/.config/nvim/git-config.vim
source ~/.config/nvim/telescope-config.vim
source ~/.config/nvim/treesitter-config.vim
source ~/.config/nvim/vim-multiple-cursors-config.vim
source ~/.config/nvim/staline.vim
source ~/.config/nvim/tabline.vim
source ~/.config/nvim/resize.vim
source ~/.config/nvim/indent-blankline.vim
source ~/.config/nvim/scrollbar.vim
source ~/.config/nvim/nvim-hlslens.vim
