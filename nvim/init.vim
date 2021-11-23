call plug#begin(stdpath('data') . '/plugged')

 " Plug for auocomplete Java
 Plug 'artur-shaik/vim-javacomplete2'
 " Plug for navigator on nvim
 Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
 " Plug for theme colors schemes
 Plug 'rafi/awesome-vim-colorschemes' " A lot of themes

 " Plug for support any lenguaje autocomplete
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 "Plug for Comment multi line 
 Plug 'preservim/nerdcommenter' ":help nerdcommenter for see commands 

 "Plug vscode scheme
 " Plug 'Mofiqul/vscode.nvim'

 " Plug for Telescope searcher
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim'

 " Plug status bar
 Plug 'maximbaz/lightline-ale'
 Plug 'itchyny/lightline.vim'

 " Plug for auto pair [] {} ()
 " Plug 'jiangmiao/auto-pairs'

 " Plug for indent blankline
 " Plug 'lukas-reineke/indent-blankline.nvim'
 " Plug 'Yggdroot/indentLine'

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

" Unmanaged plugin (manually installed and updated)
 Plug '~/my-prototype-plugin'

call plug#end()

set mouse=a

source ~/.config/nvim/custom-confs.vim
source ~/.config/nvim/coc-config.vim



