set fileformat=unix

" Vundle options
set nocompatible " be iMproved, required 
filetype off " required 
" set the runtime path to include Vundle and initialize 
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin() 
" alternatively, pass a path where Vundle should install plugins 
"call vundle#begin('~/some/path/here') 

" let Vundle manage Vundle, required 
Plugin 'gmarik/Vundle.vim' 
" The following are examples of different formats supported. 
" Keep Plugin commands between vundle#begin/end. 
Plugin 'taglist.vim'
Plugin 'Tagbar'
Plugin 'echofunc.vim'
Plugin 'lookupfile'
Plugin 'Mark'
"Plugin 'FuzzyFinder'
Plugin 'Indent-Guides'
Plugin 'Yggdroot/indentLine'
Plugin 'godlygeek/tabular'
Plugin 'neocomplcache'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'genutils'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'showcolor.vim'
Plugin 'colorsel.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'matchit.zip'
Plugin 'Syntastic'
Plugin 'SirVer/ultisnips'
"Plugin 'michaeljsmith/vim-indent-object'
" git wrapper.
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line 
call vundle#end() " required 
filetype plugin indent on " required

" configure associated with file type.
filetype plugin on
let html_use_css = 1

set backspace=indent,eol,start
set cindent

syntax enable
set incsearch
set hlsearch
set showmatch

set sw=4
set ts=4
set sts=4
set expandtab

set ruler
set wildignore=*.o,*.obj,*.bak
set foldopen-=search	" fold closed shalln't open when search.

let mapleader = ","
" nmap for plugin Lookup.
nmap <silent> <leader>lk <Plug>LookupFile<CR>
nmap <silent> <leader>ll :LUBufs<CR>      
nmap <silent> <leader>lw :LUWalk<CR> 

" useful nmaps.
nmap <silent> <SPACE> <PAGEDOWN>
nmap <unique> <silent> <ESC><ESC> :hide<CR>
nmap v <C-w>

" Taglist options
let Tlist_Use_Right_Window = 1 
let Tlist_File_Fold_Auto_Close = 1 
let Tlist_Exit_OnlyWindow = 1 
let Tlist_Show_One_File = 1
map <silent> <F9> :TlistToggle<cr> 

" Tagbar options
nmap <F8> :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 30

" Solarized Colorscheme options
syntax enable 
set background=dark
colorscheme solarized

"colorscheme ron

:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>

function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

" Neocomplcache
let g:neocomplcache_enable_at_startup = 1 

" SrcExplorer
"nmap <F8> :SrcExplToggle<CR>
"let g:SrcExpl_winHeight = 8
"let g:SrcExpl_refreshTime = 100
"let g:SrcExpl_jumpKey = "<ENTER>"
"let g:SrcExpl_gobackKey = "<SPACE>"
"let g:SrcExpl_pluginList = [
"    \ "__TAG_LIST__",
"    \ "_NERD_tree_"
"    \ ]
"let g:SrcExpl_searchLocalDef = 1
"let g:SrcExpl_isUpdateTags = 0

"Indent Guide plugin options
"let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 20
hi IndentGuidesOdd  ctermbg=3
hi IndentGuidesEven ctermbg=4
