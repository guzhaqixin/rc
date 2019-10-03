"perl replace $
autocmd BufNewFile,BufRead *.pl imap dl $
"C++ compilation
autocmd BufNewFile,BufRead *.cpp command! R execute! "!g++ -std=c++11 % -o /tmp/a.out && /tmp/a.out"
autocmd BufNewFile,BufRead *.c command R execute "!gcc -std=c11 % -o /tmp/a.out && /tmp/a.out"
"vim-slime Configuration
let g:slime_target = "vimterminal"
"Configuration of pahtogen
execute pathogen#infect()
filetype plugin indent on
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
let $LANG = 'en'
""map TODO to td
"imap td TODO
"Foler
set fdm=indent
"To relieve small finger's workload
autocmd BufNewFile,BufRead *.tex imap ;a A
autocmd BufNewFile,BufRead *.tex imap ;b B
autocmd BufNewFile,BufRead *.tex imap ;c C
autocmd BufNewFile,BufRead *.tex imap ;d D
autocmd BufNewFile,BufRead *.tex imap ;e E
autocmd BufNewFile,BufRead *.tex imap ;f F
autocmd BufNewFile,BufRead *.tex imap ;g G
autocmd BufNewFile,BufRead *.tex imap ;h H
autocmd BufNewFile,BufRead *.tex imap ;i I
autocmd BufNewFile,BufRead *.tex imap ;j J
autocmd BufNewFile,BufRead *.tex imap ;k K
autocmd bufnewfile,bufread *.tex imap ;l l
autocmd BufNewFile,BufRead *.tex imap ;m M
autocmd BufNewFile,BufRead *.tex imap ;n N
autocmd BufNewFile,BufRead *.tex imap ;o O
autocmd BufNewFile,BufRead *.tex imap ;p P
autocmd BufNewFile,BufRead *.tex imap ;q Q
autocmd BufNewFile,BufRead *.tex imap ;r R
autocmd BufNewFile,BufRead *.tex imap ;s S
autocmd BufNewFile,BufRead *.tex imap ;t T
autocmd BufNewFile,BufRead *.tex imap ;u U
autocmd BufNewFile,BufRead *.tex imap ;v V
autocmd BufNewFile,BufRead *.tex imap ;w W
autocmd BufNewFile,BufRead *.tex imap ;x X
autocmd BufNewFile,BufRead *.tex imap ;y Y
autocmd BufNewFile,BufRead *.tex imap ;z Z
autocmd BufNewFile,BufRead *.tex imap ;- _
autocmd BufNewFile,BufRead *.tex imap ;+ =
autocmd BufNewFile,BufRead *.tex imap ;9 (
autocmd BufNewFile,BufRead *.tex imap ;0 )
autocmd BufNewFile,BufRead *.tex imap ;7 &
autocmd BufNewFile,BufRead *.tex imap ;[ {
autocmd BufNewFile,BufRead *.tex imap ;] }
"When forget to sudo
cmap sudowrite w !sudo tee >/dev/null %
"set tagbar
nmap <F8> :TagbarToggle<CR>

"set fold
set fdm=indent

let g:ycm_show_diagnostics_ui=0
"syntasitc
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"use C++ in YouCompleteMe
let g:syntastic_cpp_compiler='g++'
let g:syntastic_cpp_compiler_options='-std=c++11'
let g:syntastic_c_compiler='gcc'
let g:syntastic_c_compiler_options='-std=c11'
"let g:syntastic_echo_current_error = 1
"let g:syntastic_error_symbol = "✗"
"let g:syntastic_warning_symbol = "⚠"
"let g:syntastic_enable_balloons = 1

" vim-latex-live-preview
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer='open -a Preview'
" Settings for vim-latex
set grepprg=grep\ -nH\ $*
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
"let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'
"let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'
"let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
"let g:Tex_CompileRule_pdf = 'ps2pdf $*.ps'

" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup
"some basic settings
set number 
set ruler 
syntax on 
set smartindent shiftwidth=4 
set encoding=utf-8 
inoremap <C-u> <esc>gUiwea
let g:Tex_IgnoreLevel=3

set fileencodings=utf-8,gbk,gb18030,gk2312 
"source $VIMRUNTIME/delmenu.vim 
"source $VIMRUNTIME/menu.vim 
"language messages zh_CN.utf-8 
let g:paredit_mode = 0
let g:lisp_rainbow=1
set laststatus=2
"template
autocmd BufNewFile *.pl 0r ~/.vim/template/perl.tlp
autocmd BufNewFile *.xpl 0r ~/.vim/template/shellperl.tlp
"autocmd bufnewfile ex\d.cpp 0r ~/.vim/template/ex_cpp.tlp
"autocmd BufNewFile extry.cpp 0r ~/.vim/template/ex_cpp_try.tlp
autocmd BufNewFile *.cpp 0r ~/.vim/template/cpp.tlp
autocmd BufNewFile *.c 0r ~/.vim/template/c.tlp
"Install Vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'vim-latex/vim-latex'
Plugin 'vim-syntastic/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'dpelle/vim-LanguageTool'
Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'Shougo/unite.vim'
Plugin 'farseer90718/vim-taskwarrior'
Plugin 'tpope/vim-fireplace'
Plugin 'jpalardy/vim-slime'
"Plugin 'vim-scripts/LanguageTool'
Plugin 'rizzatti/dash.vim'
Plugin 'jeaye/color_coded'
Plugin 'chumakd/perlomni.vim'
Plugin 'lervag/vimtex'
call vundle#end()
filetype plugin indent on
autocmd InsertLeave * if pumvisible() == 0|pclose|endif  
"inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"   
"inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
"inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
"inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
"
"youcompleteme  默认tab  s-tab 和自动补全冲突
let g:ycm_key_list_select_completion=['<c-n>']
"let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion=['<c-p>']
"let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_min_num_of_chars_for_completion=2 
let g:ycm_cache_omnifunc=0  
let g:ycm_seed_identifiers_with_syntax=1
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>    "force recomile with syntastic
"nnoremap <leader>lo :lopen<CR>    "open locationlist
"nnoremap <leader>lc :lclose<CR>    "close locationlist
"inoremap <leader><leader> <C-x><C-o>
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> 
"force semantic completion
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }
