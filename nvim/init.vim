set encoding=utf-8
set number
set tabstop=2
set shiftwidth=2
set splitbelow
set splitright

" Move between windows using hjkl
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/vim-easy-align'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'cloudhead/neovim-fuzzy'
Plug 'pbogut/deoplete-elm'
Plug 'elmcast/elm-vim'
Plug 'scrooloose/nerdtree'

let g:deoplete#enable_at_startup = 1

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" plugin key binding
nnoremap <C-p> :FuzzyOpen<CR>
nmap <C-k> :NERDTreeToggle<CR>
