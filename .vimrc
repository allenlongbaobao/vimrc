" Vim color file
" Maintainer:   Hans Fugal <hans@fugal.net>
" Last Change:  $Date: 2003/05/06 16:37:49 $
" URL:		http://hans.fugal.net/vim/colors/desert.vim

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

" yui
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
set background=dark
set nu
set tabstop=2
set autoindent
set sw=2
set pastetoggle=<C-F12>
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="desert"

hi Normal	guifg=white guibg=#304050

call pathogen#runtime_append_all_bundles()
execute pathogen#infect()
syntax on
filetype plugin indent on
" highlight groups
hi Cursor	guibg=khaki guifg=slategrey
"hi CursorIM
"hi Directory
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi ErrorMsg
hi VertSplit	guibg=#102030 guifg=#102030 gui=none
hi Folded	guifg=#203040 guibg=#405060
hi FoldColumn	guibg=grey30 guifg=tan
hi IncSearch	guifg=slategrey guibg=khaki
"hi LineNr
hi ModeMsg	guifg=goldenrod
hi MoreMsg	guifg=SeaGreen
hi NonText	guifg=LightBlue guibg=grey30
hi Question	guifg=springgreen
hi Search	guibg=peru guifg=wheat
hi SpecialKey	guifg=yellowgreen
hi StatusLine	guibg=#102030 guifg=grey70 gui=none
hi StatusLineNC	guibg=#203040 guifg=grey50 gui=none
hi Title	guifg=indianred
hi Visual	gui=none guifg=khaki guibg=olivedrab
"hi VisualNOS
hi WarningMsg	guifg=salmon
"hi WildMenu
"hi Menu
"hi Scrollbar
"hi Tooltip

" syntax highlighting groups
hi Comment	 guifg=#8090a0
hi Constant	 guifg=#ff6070
hi Identifier	 guifg=#70d080 gui=bold
hi Statement	 guifg=khaki
hi PreProc	 guifg=indianred
hi Type		 guifg=darkkhaki
hi Special	 guifg=navajowhite
"hi Underlined
hi Ignore	 guifg=grey40
"hi Error
hi Todo		 guifg=white guibg=#8090a0

" color terminal definitions
hi SpecialKey	 ctermfg=darkgreen
hi NonText	 cterm=bold ctermfg=darkblue
hi Directory	 ctermfg=darkcyan
hi ErrorMsg	 cterm=bold ctermfg=7 ctermbg=1
hi IncSearch	 cterm=NONE ctermfg=yellow ctermbg=green
hi Search	 cterm=NONE ctermfg=grey ctermbg=blue
hi MoreMsg	 ctermfg=darkgreen
hi ModeMsg	 cterm=NONE ctermfg=brown
hi LineNr	 ctermfg=3
hi Question	 ctermfg=green
hi StatusLine	 cterm=bold,reverse
hi StatusLineNC  cterm=reverse
hi VertSplit	 cterm=reverse
hi Title	 ctermfg=5
hi Visual	 cterm=reverse
hi VisualNOS	 cterm=bold,underline
hi WarningMsg	 ctermfg=1
hi WildMenu	 ctermfg=0 ctermbg=3
hi Folded	 ctermfg=darkgrey ctermbg=NONE
hi FoldColumn	 ctermfg=darkgrey ctermbg=NONE
hi DiffAdd	 ctermbg=4
hi DiffChange	 ctermbg=5
hi DiffDelete	 cterm=bold ctermfg=4 ctermbg=6
hi DiffText	 cterm=bold ctermbg=1
hi Comment	 ctermfg=darkcyan
hi Constant	 ctermfg=brown
hi Special	 ctermfg=5
hi Identifier	 ctermfg=6
hi Statement	 ctermfg=3
hi PreProc	 ctermfg=5
hi Type		 ctermfg=2
hi Underlined	 cterm=underline ctermfg=5
hi Ignore	 cterm=bold ctermfg=7
hi Error	 cterm=bold ctermfg=7 ctermbg=1
set hlsearch
au BufNewFile,BufReadPost *.ls setl shiftwidth=2 expandtab


set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" " required! 
Bundle 'gmarik/vundle'

" My bundles here:
Bundle 'yui/vim-yui3'

" original repos on GitHub
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"Bundle 'vim-multiple-cursors'
"Bundle 'Valloric/YouCompleteMe'
" non-GitHub repos
"Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

