set nocompatible
source $VIMRUNTIME/vimrc_example.vim
let $LANG = 'en'
"map TODO to td
imap td TODO
"Foler
set fdm=indent
"To relieve small finger's workload
imap ;a A
imap ;b B
imap ;c C
imap ;d D
imap ;e E
imap ;f F
imap ;g G
imap ;h H
imap ;i I
imap ;j J
imap ;k K
imap ;l L
imap ;m M
imap ;n N
imap ;o O
imap ;p P
imap ;q Q
imap ;r R
imap ;s S
imap ;t T
imap ;u U
imap ;v V
imap ;w W
imap ;x X
imap ;y Y
imap ;z Z
imap ;- _
imap ;+ =
imap ;9 (
imap ;0 )
imap ;7 &
imap ;[ {
imap ;] }
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

set fileencodings=utf-8,gbk,gb18030,gk2312 
"½â¾ö²Ëµ¥ÂÒÂë 
source $VIMRUNTIME/delmenu.vim 
source $VIMRUNTIME/menu.vim 
"½â¾öconsleÊä³öÂÒÂë 
language messages zh_CN.utf-8 
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
"Plugin 'vim-scripts/LanguageTool'
call vundle#end()
filetype plugin indent on
" 自动补全配置
autocmd InsertLeave * if pumvisible() == 0|pclose|endif    "离开插入模式后自动关闭预览窗口
"inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项
""上下左右键的行为 会显示其他信息
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

let g:ycm_collect_identifiers_from_tags_files=1    " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2    " 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0    " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>    "force recomile with syntastic
"nnoremap <leader>lo :lopen<CR>    "open locationlist
"nnoremap <leader>lc :lclose<CR>    "close locationlist
"inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> 
"跳转到定义处
