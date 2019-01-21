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
:tnoremap <Esc> <C-\><C-n>

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'mhartington/oceanic-next'
Plug 'tpope/vim-fugitive'
call plug#end()

" Configurations
colorscheme OceanicNext
set shiftwidth=2
set tabstop=2 expandtab
let g:ctrlp_show_hidden = 1
:set number
set wildignore+=*/.next/*,*/.c9/*,*/dist/*,*/node_modules/*,*/_next/*
let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'
