  " Requirements for use Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
"Plugin 'L9'
"Plugin 'FuzzyFinder'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" YouCompleteMe configurations
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 0 
" goto the reference file
nnoremap <leader>jd :YcmCompleter GoTo<CR> 


"Personal configurations

"imap jj <Esc> "maps jj to escape the insert mode  
"nnoremap <F2> %s/\s\+$// "remove the extra tab/spaces in the end of a line

set tabstop=2
set shiftwidth=2
set expandtab


set ai "auto indent
set si "smart indent
set wrap "Wrap lines

" Search
set ignorecase      " Do case insensitive matching
set smartcase       " Fall back to case sensitive if search pattern has a upper case character
set incsearch       " Incremental search
set hlsearch        " Highlight search
map <F10> :nohlsearch<CR>   " Temporarily disable highlighting, reenabled for the next search

" load buffers
nnoremap <F5> :buffers<CR>:buffer<Space>
" vim FuzzyFinder
nnoremap <F4> :FufFile <CR>
" create blanck line whithout entering in the insert mode
" Enter to create a blank line after and Shift + Enter to
" create one before
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
"Remove all trailing whitespace by pressing F6
nnoremap <F6> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

"highliht the characters after the 80
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
colorscheme lucius
LuciusDark

set number
" set cursorline
" hi CursorLine ctermbg=grey
" 
" autocmd InsertEnter * set nocursorline
" autocmd InsertLeave * set cursorline

syntax on
filetype on
au BufNewFile,BufRead *.orogen set filetype=ruby

" Implement automatic generator of for-loops
inoremap FOR<CR> for(uint i = 0; XXX; i++)<CR>{<CR><CR>}<ESC>2<UP>4b

" Automatically closes the brackets once they are open
"inoremap { {<CR>}<UP><CR>
