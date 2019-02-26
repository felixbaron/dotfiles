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
map <leader>- :q<CR>
map <leader>1 :cprevious<CR>
map <leader>2 :cnext<CR>
map <leader>3 :copen<CR>
map <leader>t :vimgrep /TODO/ **<CR>:copen<CR>
map <leader>g :ALEGoToDefinition<CR>
map <leader>c :terminal<CR>
map <leader>k :TagbarToggle<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>cc :set cc=80<cr>
map <leader>et :tabe <C-R>=expand('%:h').'/'<cr>
map <leader>v :e ~/.config/nvim/init.vim<CR>
map <leader>y :silent !open -a /Applications/Marked\ 2.app '%:p'<cr>
map <Esc><Esc> :w<CR>

" Switch modes in terminal
tnoremap <Esc> <C-\><C-n>

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-airline/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'pangloss/vim-javascript'
Plug 'sickill/vim-monokai'
Plug 'heavenshell/vim-jsdoc'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'majutsushi/tagbar'
call plug#end()

" Configurations
colorscheme monokai
syntax enable
set shiftwidth=2
set tabstop=2 expandtab
let g:ctrlp_show_hidden = 1
set number
set autoindent
set wildignore+=*/.next/*,*/.c9/*,*/dist/*,*/node_modules/*,*/_next/*,*/coverage/*,.DS_Store
let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
let g:ale_completion_enabled = 1
let g:airline#extensions#ale#enabled = 1

" Ctags configuration
let g:tagbar_type_typescript = {                                                  
  \ 'ctagsbin' : 'tstags',                                                        
  \ 'ctagsargs' : '-f-',                                                           
  \ 'kinds': [                                                                     
    \ 'e:enums:0:1',                                                               
    \ 'f:function:0:1',                                                            
    \ 't:typealias:0:1',                                                           
    \ 'M:Module:0:1',                                                              
    \ 'I:import:0:1',                                                              
    \ 'i:interface:0:1',                                                           
    \ 'C:class:0:1',                                                               
    \ 'm:method:0:1',                                                              
    \ 'p:property:0:1',                                                            
    \ 'v:variable:0:1',                                                            
    \ 'c:const:0:1',                                                              
  \ ],                                                                            
  \ 'sort' : 0                                                                    
\ }    
