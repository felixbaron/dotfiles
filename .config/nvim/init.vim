" Mapping
let mapleader=","
map ü <C-]>
map ö [
map ä ]
map Ö {
map Ä }
map ß /
map <leader>m :CtrlP<CR>
map <leader>. :ClearCtrlPCache<CR>
map <leader><left> :bp<CR>
map <leader><right> :bn<CR>
map <leader><up> :b #<CR>
map <leader><down> :bd<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>cc :set cc=80<cr>
map <leader>et :tabe <C-R>=expand('%:h').'/'<cr>
map <leader>v :e ~/.config/nvim/init.vim<CR>
map <Esc><Esc> :w<CR>

" Switch modes in terminal
tnoremap <Esc> <C-\><C-n>

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-airline/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'sickill/vim-monokai'
Plug 'heavenshell/vim-jsdoc'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()

" Configurations
colorscheme monokai
syntax enable
set shiftwidth=2
set tabstop=2 expandtab
let g:ctrlp_show_hidden = 1
set number
set autoindent
set wildignore+=*/.next/*,*/.c9/*,*/dist/*,*/node_modules/*,*/_next/*
let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
let g:ale_completion_enabled = 1
let g:airline#extensions#ale#enabled = 1
