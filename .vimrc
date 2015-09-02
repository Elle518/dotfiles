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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  01. GENERAL                                                            "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible          " Get rid of Vi compatibility mode
                          " Must be first!
syntax on                 " Enable syntax highlighting


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  02. PLUGINS                                                            "
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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  03. THEME/COLORS                                                       "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256        " Set terminal color to 256
colorscheme duna    " Set the color scheme

" Show syntax highlighting groups for word under cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

set guifont=Monaco:h14                 " Set font
set noantialias                        " Disable antialias


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  04. VIM UI                                                             "
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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  05. BACKUP/UNDO                                                        "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set undofile                    " Keep undo files
set undodir=~/.vim/undo         " Where to put undo files
set backup                      " Keep backup file
set backupdir=~/.vim/backup     " Where to put the backup files
set directory=~/.vim/backup     " Where to put the swap files


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  06. INDENTATION                                                        "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has ("autocmd")
    " File type detection. Indent based on filetype. Recommended.
    filetype plugin indent on
endif

set autoindent      " Keep indentation from previous line
set copyindent
set preserveindent

set noexpandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  07. SEARCH                                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase          " Ignore case when search is all lowercase
set smartcase           " But recognize uppercase if it is specified
set incsearch           " Do incremental searching
set hlsearch            " Highlight search results. To cancel :noh


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  08. EDITOR                                                             "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=indent,eol,start   " Backspace over everything in insert mode

set list                    " Show hidden characters
set listchars=tab:▸\ ,eol:¬,extends:>,precedes:<,space:·,trail:^,nbsp:%
" Shortcut to rapidly toggle `set list` using \l
nmap <leader>l :set list!<CR>

set paste                   " Avoid unexpected effects when paste in Vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  09. CUSTOM COMMANDS                                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Completely disable the use of the arrow keys in command and visual modes
noremap <up> <NOP>
noremap <down> <NOP>
noremap <left> <NOP>
noremap <right> <NOP>


