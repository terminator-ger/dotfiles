set nocompatible              " be iMproved, required
set number
filetype on  " required
filetype plugin indent on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"--------------------------------------------------------------------------------------
"
"
" The following are examples of different formats supported.
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'scrooloose/syntastic'
Plugin 'myint/syntastic-extras'

" Neomake build tool (mapped below to <c-b>)
Plugin 'benekastah/neomake'

" Remove extraneous whitespace when edit mode is exited
Plugin 'thirtythreeforty/lessspace.vim'


" Status bar mods
"Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'airblade/vim-gitgutter'

" Tab completion
"Plugin 'ervandew/supertab'

"YCM
Plugin 'Valloric/YouCompleteMe'

Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'raimondi/delimitmate'

"solarized colors
Plugin 'altercation/vim-colors-solarized'

Plugin 'scrooloose/nerdtree'
" latex
Plugin 'lervag/vimtex'

" tabular
Plugin 'godlygeek/tabular'

" c++ highlight support
Plugin 'octol/vim-cpp-enhanced-highlight'
" c++ hpp switching
Plugin 'vim-scripts/a.vim'

Plugin 'majutsushi/tagbar'
Plugin 'Shougo/neocomplete.vim'

"Iconset
Plugin 'ryanoasis/vim-devicons'

"ctags auto update
Plugin 'craigemery/vim-autotag'
"Plugin 'szw/vim-tags'

"GDB Integration
"Plugin 'sakhnik/nvim-gdb'
Plugin 'joonty/vdebug'
"Plugin 'Conque-GDB'


"Auto Completion
Plugin 'LucHermitte/lh-vim-lib'
Plugin 'LucHermitte/VimFold4C'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set shell=/bin/bash


syntax enable
set background=dark
colorscheme solarized

"let mapleader = ","


" c++ highlight settings
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1

let g:NERDTreeDirArrows = 0
let g:NERDTreeShowGitStatus = 1
let g:NERDTreeUpdateOnWrite = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "n 'rip-rip/clang_complete'Unknown"   : "?"
    \ }


"allow switching buffers with unsaved files open
set hidden
set autochdir
" start nerdtree on startup
autocmd VimEnter * NERDTree

"start nerdtree for no given file argument vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"move cursor to the main window
autocmd VimEnter * wincmd p

let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1
let g:gitgutter_highlight_lines = 1


let g:vim_tags_use_language_field = 1
let g:vim_tags_ignore_files = ['.gitignore', '.svnignore', '.cvsignore']

" Enable deoplete at startup
  let g:deoplete#enable_at_startup = 1
"""""""""""""""""""""""""""""""""""""""""""""
"Key Mappings
"""""""""""""""""""""""""""""""""""""""""""""
"silent! nmap <F2>> :NERDTreeToggle<CR>
silent! map <F2> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

"move betweens splits
"nmap <C-A>h˙<C-w><Left>
"nmap <C-A>l <C-w><Right>
"nmap <C-A>l <C-w><Up>
"nmap <C-A>j <C-w><Down>

"move between tabs
map <A-l> gt
map <A-h> gT

let g:vim_tags_use_language_field = 1
let g:vim_tags_ignore_files = ['.gitignore', '.svnignore', '.cvsignore']

"source lookup
"nnoremap <F3> <C-]>
"source lookup return
"nnoremap <C-k> <C-t>

"move coursor top bottom beginning end
nnoremap <C-h> 0
nnoremap <C-j> L
nnoremap <C-k> H
nnoremap <C-l> $
" highlight current line
set cursorline

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"see above, but replace '.syntastic_c_config' with
" `.syntastic_cpp_config`.
let g:syntastic_cpp_checkers = ['check']



let g:airline_theme='solarized'


"gdb
"let g:nvimgdb_key_next = 'F6'
"let g:nvimgdb_key_step = 'F7'
"let g:nvimgdb_key_finish = 'F8'
"let g:nvimgdb_key_breakpoint = '<leader>b'


"visual tabbing
vmap <Tab> >gv
vmap <S-Tab> <gv

set foldmethod=syntax


"latex
let g:vimtex_compiler_progname = 'nvr'

if !exists('g:ycm_semantic_triggers')
   let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme

map <F11> :w<cr><leader>ll

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set copyindent

