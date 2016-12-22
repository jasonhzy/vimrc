 "开启语法高亮功能
 syntax enable
 "允许用指定语法高亮配色方案替换默认方案
 syntax on

 set nocompatible " not compatible with vi
 set autoread " detect when a file is changed

 " make backspace behave in a sane manner
 set backspace=indent,eol,start

 " set a map leader for more key combos
 let mapleader = ','
 let g:mapleader = ','


 "可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
 if has('mouse')
  set mouse=a
 endif
 "set selection=exclusive
 "set selectmode=mouse,key  

 "显示行号
 set nu

 set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
 set shiftround " round indent to a multiple of 'shiftwidth'
 set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
 set tabstop=4 " 设定 tab 长度为 4
 "set expandtab
 set showmatch        " 设置匹配模式，显示匹配的括号

 set hlsearch "highlight searches
 set incsearch "do incremental searching
 set ignorecase

 set wrap "turn on line wrapping
 set wrapmargin=8 " wrap lines when coming within n characters from side
 set linebreak " set soft wrapping

 
 set autoindent " automatically set indent of new line
 "set smartindent        " 智能对齐方式


 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " => vim支持多种折叠：
 "		手动建立折叠（manual）、
 "		基于缩进进行折叠（indent）、
 "		基于语法进行折叠（syntax）、
 "		未更改文本构成折叠（diff）等
 " => 折叠快捷方式： 
 "		za 打开或关闭当前折叠
 "		zM 关闭所有折叠
 "		zR 打开所有折叠
 "		zc 折叠
 "		zC 对所在范围内所有嵌套的折叠点进行折叠
 "		zo 展开折叠
 "		zO 对所在范围内所有嵌套的折叠点展开
 "		[z 到当前打开的折叠的开始处。
 "		]z 到当前打开的折叠的末尾处。
 "		zj 向下移动。到达下一个折叠的开始处。关闭的折叠也被计入。
 "		zk 向上移动到前一折叠的结束处。关闭的折叠也被计入。
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " 基于缩进进行代码折叠
 set foldmethod=indent
 " 启动 vim 时关闭折叠代码
 set nofoldenable

  
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " => Files, backups, and undo
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "
 "set nobackup
 "set nowritebackup
 "禁止生成临时文件,*.swp
 set noswapfile
 set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
 set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

 "在编辑过程中，在右下角显示光标位置的状态行
 set ruler

 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " => StatusLine
 " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 set laststatus=2 " show the satus line all the time


 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " => Mappings
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " General mappings/shortcuts for functionality
 " Additional, plugin-specific mappings are located under
 " the plugins section
 "Close the current buffer
 noremap <C-d> :q<cr>

 "不显示行号 
 nmap <F3> :set nu!<CR>

 "撤销修改
 nnoremap <S-z> <ESC>u<cr>
 inoremap <S-z> <ESC>u<cr>
 vnoremap <S-z> <ESC>u<cr>

 map <C-a> ggVG
 map! <C-a> ggVG
 vnoremap <C-c> "+y
 "map <C-v> "+p
 map <C-S-x> gU
 map <c-s-y> gu

 "使用箭头导航buffer"
 map <S-right> :bn<cr>
 map <S-left> :bp<cr>
 set autowrite "在切换buffer时自动保存当前的文件

 "ALT+up/down行内容的移动(for linux)
 map <M-Up> dd<Up><Up>p 
 map <M-Down> ddp

 "ALT+up/down行内容的移动(mac)
 " Normal mode
 "nnoremap <S-j> :m .+1<CR>==
 "nnoremap <S-k> :m .-2<CR>==

 " Insert mode
 "inoremap <S-j> <ESC>:m .+1<CR>==gi
 "inoremap <S-k> <ESC>:m .-2<CR>==gi
 
 " Visual mode
 "vnoremap <S-j> :m '>+1<CR>gv=gv
 "vnoremap <S-k> :m '<-2<CR>gv=gv


 "toggle invisible characters
 "set invlist
 "set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
 "highlight SpecialKey ctermbg=none " make the highlighting of tabs less annoying
 "set showbreak=↳
 "nmap <leader>l :set list!<cr>
 
 cmap w!! w !sudo tee >/dev/null %



 "Plugins
 set nocompatible                " be iMproved
 filetype off                    " required!
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 "plugin  
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'scrooloose/nerdtree'
 Plugin 'scrooloose/nerdcommenter' "code comment
 Plugin 'scrooloose/syntastic'
 Plugin 'Valloric/YouCompleteMe'
 Plugin 'bling/vim-airline'
 Plugin 'majutsushi/tagbar'		"install ctags plugin firstly		
 Plugin 'terryma/vim-multiple-cursors'
 Plugin 'tpope/vim-fugitive'		"git plugin
 Plugin 'kien/ctrlp.vim'			"search file plugin
 Plugin 'AutoClose'			"输入(，{等需要配对的符号时，自动帮你补全剩余半个		
 Plugin 'Tabular'				"代码更加易于纵向排版，以=或,符号对齐
 Plugin 'shawncplus/phpcomplete.vim'
 Plugin 'suan/vim-instant-markdown' "[sudo] npm -g install instant-markdown-d,实时预览markdown文件
 call vundle#end()            " required
 filetype plugin indent on    " required


 "MiniBufferExplorer
 let g:miniBufExplMapWindowNavVim = 1 
 let g:miniBufExplMapWindowNavArrows = 1 
 let g:miniBufExplMapCTabSwitchBufs = 1 
 let g:miniBufExplModSelTarget = 1 

 "NERDTree
 " 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
 nmap <F2> :NERDTreeToggle<CR>
 " 设置NERDTree子窗口宽度
 let NERDTreeWinSize=32
 " 设置NERDTree子窗口位置
 let NERDTreeWinPos="left"
 " 显示隐藏文件
 let NERDTreeShowHidden=1
 " NERDTree 子窗口中不显示冗余帮助信息
 let NERDTreeMinimalUI=1
 " 删除文件时自动删除文件对应 buffer
 let NERDTreeAutoDeleteBuffer=1
 let NERDTreeQuitOnOpen=0 "打开文件后不关闭NERDTreeFind窗口

 "autocmd vimenter * NERDTree
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
 autocmd VimEnter * wincmd p " 默认进入右侧编辑区
 "autocmd VimEnter,BufWinEnter * NERDTreeFind | wincmd p "进入vim时打开 NERDTreeFind窗口

 

 "powerline
 "set laststatus=2
 "set guifont=PowerlineSymbols\ for\ Powerline
 "set nocompatible
 "set t_Co=256
 "let g:Powerline_symbols = 'unicode'

 "airline
 set t_Co=256
 let g:airline_powerline_fonts = 1
 "let g:airline_theme='wombat'
 " display open buffers in tabline
 let g:airline#extensions#tabline#enabled = 1 
 let g:airline#extensions#tabline#buffer_nr_show = 1

 "Tagbar settings
 nmap <F8> :TagbarToggle<CR>   
 let g:tagbar_autofocus = 1

 
 " map fuzzyfinder (CtrlP) plugin
 " nmap <silent> <leader>t :CtrlP<cr>
 " nmap <silent> <leader>r :CtrlPBuffer<cr>
 let g:ctrlp_map='<C-S-h>'
 let g:ctrlp_dotfiles=1
 let g:ctrlp_working_path_mode = 'ra'

 
 " CtrlP ignore patterns
 " let g:ctrlp_custom_ignore = {
 "             \ 'dir':
 " '\.git$\|node_modules$\|bower_components$\|\.hg$\|\.svn$',
 "             \ 'file': '\.exe$\|\.so$'
 "             \ }
 " only show files that are not ignored by git
 let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
 
 " search the nearest ancestor that contains .git, .hg, .svn
 let g:ctrlp_working_path_mode = 2


 "NERD Commenter
 "<leader>ca 转换注释的方式，比如： /**/和//
 "<leader>cc 注释当前行和选中行
 "<leader>c  如果被选区域有部分被注释，则对被选区域执行取消注释操作，其它情况执行反转注释操作
 "<leader>cs 添加性感的注释，代码开头介绍部分通常使用该注释
 "<leader>cA 跳转到该行结尾添加注释，并进入编辑模式
 "<leader>cu 取消注释
 "<leader>ci 执行反转注释操作，选中区域注释部分取消注释，非注释部分添加注释
 "<leader>cm 对被选区域用一对注释符进行注释，前面的注释对每一行都会添加注释
 "<leader>cy 添加注释，并复制被添加注释的部分 
 "<leader>c$ 注释当前光标到改行结尾的内容  


 " Fugitive Shortcuts
 "nmap <silent> <leader>gs :Gstatus<cr>
 "nmap <leader>ge :Gedit<cr>
 "nmap <silent><leader>gr :Gread<cr>
 "nmap <silent><leader>gb :Gblame<cr>
 nmap gs :Gstatus<cr>
 nmap ge :Gedit<cr>
 nmap gr :Gread<cr>
 nmap gb :Gblame<cr>


 " syntastic
 let g:syntastic_check_on_open = 0 "是否在打开文件时检查
 let g:syntastic_check_on_wq = 1 "是否在保存文件后检查
 let g:syntastic_error_symbol = '✗'
 let g:syntastic_warning_symbol = '⚠'
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_loc_list_height = 5
 let g:syntastic_enable_highlighting = 0
 let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd', 'phplint']
 let g:syntastic_html_checkers = []

 " YouCompleteMe
 autocmd FileType php set omnifunc=phpcomplete#CompletePHP
 let g:ycm_complete_in_comments = 1                "在注释输入中也能补全
 let g:ycm_complete_in_strings = 1                "在字符串输入中也能补全
 let g:ycm_collect_identifiers_from_tags_files=1                 " 开启 YCM 基于标签引擎
 let g:ycm_collect_identifiers_from_comments_and_strings = 1    "注释和字符串中的文字也会被收入补全
 let g:ycm_seed_identifiers_with_syntax=1            "语言关键字补全, 不过python关键字都很短，所以，需要的自己打开
 let g:ycm_collect_identifiers_from_tags_files = 1
 let g:ycm_min_num_of_chars_for_completion=2            " 从第2个键入字符就开始罗列匹配项`
 let g:ycm_key_invoke_completion = '<C-n>' "直接触发自动补全, <C-Space>for mac
 let g:ycm_cache_omnifunc=0  " 禁止缓存匹配项,每次都重新生成匹配项
 let g:ycm_seed_identifiers_with_syntax=1	" 开启语义补全
 let g:ycm_complete_in_comments = 1 " 在注释输入中也能补全
 let g:ycm_complete_in_strings = 1 " 在字符串输入中也能补全
 set completeopt-=preview  " YCM的previw窗口比较恼人，还是关闭比较好"

 " 比较喜欢用tab来选择补全...
 function! MyTabFunction ()
let line = getline('.')
let substr = strpart(line, -1, col('.')+1)
let substr = matchstr(substr, "[^ \t]*$")
if strlen(substr) == 0
return "\<tab>"
endif
return pumvisible() ? "\<c-n>" :
"\<c-x>\<c-o>"
 endfunction
 inoremap <tab> <c-r>=MyTabFunction()<cr>"


 " 跳转到定义处, 分屏打开 
 let g:ycm_goto_buffer_command = 'horizontal-split'
 let g:ycm_error_symbol = '>>'
 let g:ycm_warning_symbol = '>*'
 nmap <leader>gd :YcmDiags<CR>
 nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>           " 跳转到申明处
 nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>            " 跳转到定义处
 nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

 "minibufexplorer
 "let g:miniBufExplorerMoreThanOne=0   "避免出现多个窗口

 "multiple-cursors
 let g:multi_cursor_use_default_mapping=0

 " Default mapping
 let g:multi_cursor_next_key='<C-n>'
 let g:multi_cursor_prev_key='<C-p>'
 let g:multi_cursor_skip_key='<C-x>'
 let g:multi_cursor_quit_key='<Esc>'

 "tabular
 "eg :Tab /|, :Tab/:, :Tab /:\zs
 let g:tabular_loaded = 1


 "与tmux中使用up/down/left/right键出现ABCD冲突, 使用tmux时要禁用
 let g:autoclose_on = 1
