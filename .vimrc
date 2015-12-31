"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Filename: .vimrc                                                      "
" Maintainer: Elle518                                                     "
"        URL: http://github.com/Elle518/dotfiles                          "
"                                                                         "
"                                                                         "
" Sections:                                                               "
"   01. GENERAL ................. General Vim behavior                    "
"   02. PLUGINS ................. Installed plugins wth Vundle            "
"   03. THEME/COLORS ............ Colors, fonts, etc.                     "
"   04. VIM UI .................. User interface appearance               "
"   05. BACKUP/UNDO ............. Backup/undo files                       "
"   06. INDENTATION ............. Indentation preferences                 "
"   07. SEARCH .................. Highlight, ignorecase, etc.             "
"   08. EDITOR .................. Edition preferences                     "
"   09. CUSTOM COMMANDS ......... Mapping, aliasing, etc.                 "
"   10. PLUGINS SETTINGS ........ Plugins preferences, settings, etc.     "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  01. GENERAL ~>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible          " Get rid of Vi compatibility mode
                          " Must be first!
syntax on                 " Enable syntax highlighting
scriptencoding utf-8
set encoding=utf-8

let mapleader="\<Space>"  " Custom leader key

"Source $MYVIMRC reloads the saved $MYVIMRC
nnoremap <Leader>sv :source $MYVIMRC<CR>

"Open $MYVIMRC for editing, or use :e $MYVIMRC
nnoremap <Leader>ev :tabedit $MYVIMRC<CR>

"Vim window size
set lines=35
set columns=120

"<~

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  02. PLUGINS ~>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off                " Required to install Vundle

set rtp+=~/.vim/bundle/Vundle.vim  " Set the runtime path to include Vundle
                                   " Initializr Vundle

call vundle#begin()         " Keep plugin commands between vundle#begin/end
                            " Required

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" MY PLUGINGS
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tomtom/tcomment_vim'
Plugin 'suan/vim-instant-markdown'

" All of your Plugins must be added before the following line
call vundle#end()           " All plugins must be before this line
                            " Required

filetype plugin indent on   " Required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins
"                   - append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ

"<~

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  03. THEME/COLORS ~>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256        " Set terminal color to 256
colorscheme duna    " Set the color scheme

" Show syntax highlighting groups for word under cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

if has('gui_running')                  " Set font
  set guifont=Monaco:h14
endif
set noantialias                        " Disable antialias

if has('gui_running')                  " Set GUI transparency
	set transparency=15
endif

"<~

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  04. VIM UI ~>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2            " Show statusbar
set ruler                   " Show the cursor position in the file
set showcmd                 " Display incomplete commands in the last line
set showmode                " Always show the current mode
set title                   " Show filename in title bar
set scrolloff=5             " Set scroll off line number

set number                  " Display line numbers
set relativenumber

set mouse=a                 " Allow mouse to move around

set wildmenu                " Show available completions (use TAB)

set nocursorline
let g:netrw_cursor=0

set shortmess+=I            " Turn off introductory message

"<~

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  05. BACKUP/UNDO ~>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set undofile                    " Keep undo files
set undodir=~/.vim/undo         " Where to put undo files
set backup                      " Keep backup file
set backupdir=~/.vim/backup     " Where to put the backup files
set directory=~/.vim/backup     " Where to put the swap files

"<~

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  06. INDENTATION ~>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has ("autocmd")
    " File type detection. Indent based on filetype. Recommended.
    filetype plugin indent on
endif

autocmd FileType c,cpp :set cindent    " Enable C-style indentation
set smartindent                        " Add extra level of indentation

set noexpandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

"<~

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  07. SEARCH ~>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase          " Ignore case when search is all lowercase
set smartcase           " But recognize uppercase if it is specified
set incsearch           " Do incremental searching
set nohlsearch          " Turn off search highlighting

"<~

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  08. EDITOR ~>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=indent,eol,start   " Backspace over everything in insert mode

set nolist                       " Not show hidden characters by default
set listchars=tab:▸\ ,eol:¬,extends:>,precedes:<,space:·,trail:^,nbsp:%
" Shortcut to rapidly toggle `set list` using <Space>l
nnoremap <Leader>l :set list!<CR>

" Shortcut to rapidly toggle 'set spell' using <Space>s
nnoremap <Leader>s :set spell!<CR>

" Shortcut to rapidly toggle 'set modifiable' using <Space>m
nnoremap <Leader>m :set modifiable!<CR>

set autowrite                    " No write warning message
set clipboard+=unnamed           " Stick the content from the unnamed
                                 " register in the clipboard

set foldmethod=syntax            " Fold content based on pre-existing
                                 " syntax rules

" Fold method only for .vimrc file
autocmd BufRead .vimrc  setlocal foldmethod=marker foldmarker=~>,<~

"<~

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  09. CUSTOM COMMANDS ~>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Completely disable the use of the arrow keys in command and visual modes
noremap <up> <NOP>
noremap <down> <NOP>
noremap <left> <NOP>
noremap <right> <NOP>
noremap <Space> <NOP>

" Disable the use of Ex-mode
nnoremap Q <NOP>

" Compile and run C programs
if has('gui_running')
	map <F8> :w<CR> :!gcc -Wall % -o %< && ./%<<CR>
else
	map <F8> :w<CR> :!clear && gcc -Wall % -o %< && ./%<<CR>
endif

" Run Python programs
if has('gui_running')
	map <F7> :w<CR> :!python3 %<CR>
else
	map <F7> :w<CR> :!clear && python3 %<CR>
endif

" Automatic bracket settings
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O
inoremap " ""<ESC>i
inoremap /* /*  */<ESC>2hi
" CTRL-j getaway
inoremap <C-j> <Esc>/[)}"'\]>]<CR>:nohl<CR>a

" Late bracketing of text
vnoremap _( <Esc>`>a)<Esc>`<i(<Esc>/[)]<CR>:noh<CR>a
vnoremap _[ <Esc>`>a]<Esc>`<i[<Esc>/[]]<CR>:noh<CR>a
vnoremap _{ <Esc>`>a}<Esc>`<i{<Esc>/[}]<CR>:noh<CR>a
vnoremap _" <Esc>`>a"<Esc>`<i"<Esc>/["]<CR>:noh<CR>a
vnoremap _' <Esc>`>a'<Esc>`<i'<Esc>/[']<CR>:noh<CR>a

"C & C++ Templates
au BufNewFile *.c 0r ~/.vim/skeleton/skeleton.c
au BufNewFile *.c exe "1," . 7 . "g/File:.*/s//File: " .expand("%")
au BufNewFile *.c exe "1," . 7 . "g/Date created:.*/s//Date created: " .strftime("%d-%m-%Y")
au BufNewFile *.c exe "1," . 7 . "g/Author:.*/s//Author: " .$USER
au BufNewFile *.c exe "normal 3k$"
au BufWritePre,FileWritePre *.c exe "normal ma"
au BufWritePre,FileWritePre *.c exe "1," . 7 . "g/Date modified:.*/s//Date modified: " .strftime("%d-%m-%Y")
au BufWritePost,FileWritePost *.c exe "normal `a" 

au BufNewFile *.cpp 0r ~/.vim/skeleton/skeleton.cpp
au BufNewFile *.cpp exe "1," . 7 . "g/File:.*/s//File: " .expand("%")
au BufNewFile *.cpp exe "1," . 7 . "g/Date created:.*/s//Date created: " .strftime("%d-%m-%Y")
au BufNewFile *.cpp exe "1," . 7 . "g/Author:.*/s//Author: " .$USER
au BufNewFile *.cpp exe "normal 3k$"
au BufWritePre,FileWritePre *.cpp exe "normal ma"
au BufWritePre,FileWritePre *.cpp exe "1," . 7 . "g/Date modified:.*/s//Date modified: " .strftime("%d-%m-%Y")
au BufWritePost,FileWritePost *.cpp exe "normal `a" 

"<~

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  10. PLUGINS SETTINGS ~>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NERDTree
let NERDTreeShowHidden=1                     " Show hidden files by default
let NERDTreeIgnore=['\.DS_Store$', '\.localized$', '\.netrwhist$']
let NERDTreeShowBookmarks=1
let NERDTreeShowLineNumbers=1

"YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'

"vim-instant-markdown
let g:instant_markdown_autostart = 0          " Control preview manually

"<~
