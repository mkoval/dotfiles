set nocompatible
set mouse=a
set ttymouse=xterm

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'puppetlabs/puppet-syntax-vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'kien/ctrlp.vim'

" Filetype detection.
filetype plugin indent on
au FileType make setlocal noexpandtab
au BufRead,BufNewFile *.launch set filetype=xml
au BufRead,BufNewFile *.urdf set filetype=xml
au BufRead,BufNewFile *.srdf set filetype=xml
au BufRead,BufNewFile *.xacro set filetype=xml

" Spaces and tabs.
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Enable incremental search with case-insensitivity unless the query contains a
" capital letter.
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q :nohlsearch<CR>

" Directories for storing temporary files.
set directory=./.backup,/tmp
set backupdir=./.backup,/tmp
set tags=./tags;/

"
set laststatus=2

" Change j and k to move between wrapped lines.
nmap j gj
nmap k gk

" Enable emacs-style keybinds for the command line.
cnoremap <C-a>  <Home>
cnoremap <C-b>  <Left>
cnoremap <C-f>  <Right>
cnoremap <C-d>  <Delete>
cnoremap <M-b>  <S-Left>
cnoremap <M-f>  <S-Right>
cnoremap <M-d>  <S-right><Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>d <S-right><Delete>
cnoremap <C-g>  <C-c>

" Color scheme.
syntax on
if has("gui_running")
    set background=dark
    colorscheme solarized
else
    colorscheme default
endif

" Ctrl + P remapping.
nmap ; :CtrlPBuffer<CR>
:let g:ctrlp_map = '<Leader>t'
:let g:ctrlp_match_window_bottom = 0 
:let g:ctrlp_match_window_reversed = 0 
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0 
:let g:ctrlp_dotfiles = 0 
:let g:ctrlp_switch_buffer = 0

" YCM C-family language auto-completion.
let g:ycm_confirm_extra_conf = 0
nnoremap <F2> :YcmCompleter GoToDefinitionElseDeclaration<CR>

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
endif
