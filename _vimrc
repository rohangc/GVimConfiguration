source $VIMRUNTIME/defaults.vim
source $VIM/_vimrc

" ----------------------------------------------------------------------------------
"                                     Vundle
" ----------------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"call vundle#begin($HOME\vimfiles\bundle\Vundle.vim)

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" My Plugins
Plugin 'AlessandroYorba/Alduin'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'sukima/xmledit'
Plugin 'vim-scripts/AfterColors.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'github/copilot.vim'
Plugin 'drmingdrmer/vim-toggle-quickfix'
Plugin 'tpope/vim-fugitive'
Plugin 'elzr/vim-json'
" This one takes a lot of time, hence do it last
Plugin 'ycm-core/YouCompleteMe'
" The following are made redundant by 'Valloric/YouCompleteMe' above:
" AutoCompIPop, supertab, OmniCPPComplete

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
" ----------------------------------------------------------------------------------


" My Colour scheme
colorscheme alduin

" My font (on Windows only)
if has('gui_running') && (has('win32') || has('win64'))
  set guifont=Consolas:h10:cANSI
endif


" Maximize on startup
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif

if has('win32') || has('win64')
    exe 'set rtp+=' . expand('~/.vim')
    exe 'set rtp+=' . expand('~/.vim/after')
endif

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


" When searching try to be smart about cases 
set smartcase


" Enable syntax highlighting
syntax enable 


set encoding=utf-8


" My preferred settings
set autoindent
set belloff=all
set completeopt-=preview
set expandtab
set guioptions-=T
set linebreak
set nobackup
set nolist
set noundofile
set nowritebackup
set number
set shiftwidth=4
set smartindent
"set smarttab
set softtabstop=4
set tabstop=4
set textwidth=0
set wrap
set wrapmargin=0
set wildignore+=*\\tmp\\*,*.dll,*.exe,*.exp,*.gz,*.ilk,*.lib,*.o,*.pdb,*.pch,*.so,*.swp,tags,*.tar,*.zip


" My keymaps and variables
let g:NERDTreeMouseMode = 3
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 70
let g:Tlist_Inc_Winwidth = 0
let g:Tlist_WinWidth = 70
let g:ctrlp_map = '<F7>'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'ra'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = "$HOME/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"
let g:ycm_disable_for_files_larger_than_kb=5000
let g:ycm_max_diagnostics_to_display=0
let g:ycm_show_detailed_diag_in_popup=1
let g:ycm_always_populate_location_list = 1
" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")
let g:ycm_clangd_args = ['--clang-tidy']
nnoremap <C-n> :tnext <CR>
nnoremap <C-p> :tprev <CR>
nnoremap <C-l> :YcmCompleter GoTo <CR>
nnoremap <S-l> :YcmCompleter GoToDefinition <CR>
nnoremap <C-k> :YcmCompleter GoToCallers <CR>
nnoremap <F2> :term <CR>
nnoremap <F5> :cprev <CR>
nnoremap <F6> :cnext <CR>
"nnoremap <F7> :CtrlPMixed <CR>
nnoremap <F8> :NERDTreeToggle <CR>
nnoremap <F9> :TlistToggle <CR>
nnoremap <F10> :BufExplorerVerticalSplit <CR>
nnoremap <2-LeftMouse> *
"For plugin 'drmingdrmer/vim-toggle-quickfix':
nmap <C-g><C-o> <Plug>window:quickfix:loop
