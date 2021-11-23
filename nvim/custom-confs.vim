" configs
set tabstop=2
set shiftwidth=2 smarttab
set expandtab
set clipboard=unnamedplus " copy to system clipboard

" for RAFI / AWESOME
set number

set termguicolors
colorscheme ayu

" for nvim treesitter (Syntax Highlight)

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF



" for javaAutocomplete

autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
let g:JavaComplete_EnableDefaultMappings = 1


" for commenter 
filetype plugin on

" for telescope 
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Status line lightline.vim INSERT NORMAL VISUAL
let g:lightline = {
  \ 'colorscheme': 'one',
  \ }


" Folding Save
augroup AutoSaveFolds
  autocmd!
  au BufWinLeave ?* mkview 
  au BufWinEnter ?* silent! loadview
augroup END


" Enable HTML
set omnifunc=htmlcomplete#CompleteTags

" coc extensions
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-sh', 'coc-eslint', 'coc-pairs']

let g:coc_filetype_map = {'js': 'javascript.jsx'}


au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx


