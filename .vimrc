"行号"

set nu

"高亮"

syntax enable
syntax on
"colorscheme cpp.vim

"缩进"

set cindent
set shiftwidth=3
set tabstop=3

set cindent
syntax on
syntax enable
set background=dark
set ruler
"打开上次打开文件的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif


"ctags"
"set tags=/home/yang/下载/SCIP/scipoptsuite-3.2.0/scip-3.2.0/tags
"set tags=/home/yang/文档/cmip-01.16/tags
"set tags=~/work/SMIP/tags

"winmanager"

let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

"Grep"

nnoremap <silent> <F3> :Grep<CR>

"SuperTab"

"filetype plugin indent on
"set completeopt=longest,menu

"let g:SuperTabDefaultCompletionType="context"

"关闭vim一致性原则
set nocompatible
" Leader
let mapleader = ","
" Highlight current line
set cursorline "cursorcolumn
" Need confrimation while exit
set confirm
"设置历史记录条数
set history=1000
"设置取消备份禁止临时文件的生成
set nobackup
set noswapfile
"一直显示状态栏
set laststatus=2
"配置backspace的工作方式
set backspace=indent,eol,start
"自动判断编码时依次尝试以下编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"开启语法高亮功能
syntax enable
" Switch syntax highlighting on, when the terminal has colors
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
syntax on
endif
"*********************************************************
" vundle 配置*
"*********************************************************
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
	" let Vundle manage Vundle
	Bundle 'gmarik/vundle'
	" My Bundles here:
	Bundle 'tpope/vim-fugitive'
	Bundle 'Lokaltog/vim-easymotion'
	Bundle 'taglist.vim'
	Bundle 'The-NERD-tree'
	Bundle 'vim-airline/vim-airline'
	Bundle 'scrooloose/syntastic'
	Bundle 'tomasr/molokai'
	Bundle 'scrooloose/nerdcommenter'
	Bundle 'grep.vim'
	Bundle 'a.vim'
	Bundle 'SuperTab'
	"********************************************************
	" 一般性配置*
	"********************************************************
	"显示行号
	set number
	"设置在编辑过程中右下角显示光标的行列信息
	set ruler
	"在状态栏显示正在输入的命令
	set showcmd
	"设置匹配模式
	set showmatch
	"设置C/C++方式自动对齐
	set autoindent
	set cindent
	"指定配色方案为256色
	set t_Co=256
	colorscheme molokai
	highlight NonText guibg=#060606
	highlight Folded guibg=#0A0A0A guifg=#9090D0
	"设置搜索时忽略大小写
	"set ignorecase
	"设置在vim中可以使用鼠标
	set mouse=a
	if has('mouse')
	set mouse-=a
	endif
	"设置tab宽度
	set tabstop=3
	"设置自动对齐空格数
	set shiftwidth=3
	"设置退格键时可以删除4个空格
	set smarttab
	set softtabstop=3
	"将tab键自动转换为空格
	set expandtab
	"设置编码方式
	set encoding=utf-8
	"检测文件类型
	filetype on
	"针对不同的文件采取不同的缩进方式
	filetype indent on
	"允许插件
	filetype plugin on
	"启动智能补全
	filetype plugin indent on
	" Index ctags from any project, including those outside Rails
	""map <Leader>ct :!ctags -R .<CR>
	" nohlsearch shortcut
	nmap -hl :nohlsearch<cr>
	nmap +hl :set hlsearch<cr>
	nnoremap <leader>w :w<CR>
	nnoremap <leader>q :q<CR>
	" <Leader>f{char} to move to {char}
	map <Leader>f <Plug>(easymotion-bd-f)
	nmap <Leader>f <Plug>(easymotion-overwin-f)
	nnoremap <silent> <F3> :Rgrep<CR>
	nnoremap <silent> <C-]> g<C-]>
	nnoremap <silent> <F2> :AT<CR>
	nnoremap <silent> <F5> :make<CR>
	nnoremap <silent> <F6> :cw<CR>
	nn <leader>1 1gt
	nn <leader>2 2gt
	nn <leader>3 3gt
	nn <leader>4 4gt
	nn <leader>5 5gt
	nn <leader>6 6gt
	nn <leader>7 7gt
	nn <leader>8 8gt
	nn <leader>9 9gt
	nn <leader>0 10gt
	"*****************************************************
	" taglist配置*
	"*****************************************************
	"不显示"press F1 to display help"
	let Tlist_Compact_Format=1
	"窗口在左侧显示
	let Tlist_Use_Right_Window=1
	"只显示当前文件的tags
	let Tlist_Show_One_File=1
	"高亮显示
	let Tlist_Auto_Highlight_tag=1
	"随文件自动更新
	let Tlist_Auto_Update=1
	"设置宽度
	let Tlist_WinWidth=30
	"taglist窗口是最后一个窗口，则退出vim
	let Tlist_Exit_OnlyWindow=1
	"单击跳转
	let Tlist_Use_SingClick=1
	"打开关闭快捷键
	nnoremap <silent> <F8> :TlistToggle<CR>
	"********************************************************
	" NERD_Tree 配置*
	"********************************************************
	"显示增强
	let NERDChristmasTree=1
	"自动调整焦点
	let NERDTreeAutoCenter=1
	"鼠标模式:目录单击,文件双击
	let NERDTreeMouseMode=2
	"打开文件后自动关闭
	let NERDTreeQuitOnOpen=1
	"显示文件
	let NERDTreeShowFiles=1
	"显示隐藏文件
	let NERDTreeShowHidden=1
	"高亮显示当前文件或目录
	let NERDTreeHightCursorline=1
	"显示行号
	let NERDTreeShowLineNumbers=1
	"窗口位置
	let NERDTreeWinPos='left'
	"窗口宽度
	let NERDTreeWinSize=31
	"不显示'Bookmarks' label 'Press ? for help'
	let NERDTreeMinimalUI=1
	"快捷键
	nnoremap <silent> <F4> :NERDTreeToggle<CR>
	"*****************************************************
	" Syntastic配置*
	"*****************************************************
	" configure syntastic syntax checking to check on open as well as save
	let g:syntastic_check_on_open=1
	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_wq = 0
   let g:syntastic_cpp_compiler = 'g++'
   let g:syntastic_cpp_compiler_options = '-std=c++11'
	nnoremap <F7> :SyntasticToggleMode<CR>:SyntasticToggleMode<CR>
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*
	let g:airline#extensions#whitespace#enabled = 0

   "自动匹配括号
   "inoremap ( ()<Esc>i
   "inoremap [ []<Esc>i
   "inoremap < <><Esc>i
   "inoremap { {}<Esc>i
   inoremap ' ''<Esc>i
   inoremap " ""<Esc>i
   ""inoremap | ||<Esc>i
   
   autocmd BufWritePost $MYVIMRC source $MYVIMRC 

   set completeopt=preview,menu "代码补全"
   set autowrite "自动补全"
   set smartindent "智能对齐"
   "set spell spelllang=en_us "英语拼写检查"

   hi comment ctermfg=2   
   set incsearch                   " do incremental searching, search as you type "
   set ignorecase                  " ignore case when searching "
   set smartcase                   " no ignorecase if Uppercase char present "

   "font"
   set guifont=Courier\ New\ 10
   ""set guifont=Courier_new:h10:cDEFAULT 
   "use vim-plug install plugin
   call plug#begin('~/.vim/plugged')
   Plug 'lervag/vimtex'
   Plug 'sirver/ultisnips'
   Plug 'vim-latex/vim-latex'
   Plug 'keitaNakamura/tex-conceal.vim', {'for': 'tex'}
   Plug 'jiangmiao/auto-pairs'
   "Plug 'wjakob/wjakob.vim'
   call plug#end()

   "let g:vimtex_latexmk_options='-pdf -pdflatex="xelatex -synctex=1 \%S \%O" -verbose -file-line-error -interaction=nonstopmode'
   let g:tex_flavor='latex'
   "let g:vimtex_view_method='skim'
   "let g:vimtex_view_method='sumatra'
   let g:vimtex_view_method='zathura'
   let g:vimtex_quickfix_mode=0
   "对中文支持
   let g:Tex_CompileRule_pdf = 'xelatex -synctex=1 --interaction=nonstopmode $*'
   let g:vimtex_compiler_latexmk_engines = {'_':'-xelatex'}
   let g:vimtex_compiler_latexrun_engines = {'_':'xelatex'}

   set conceallevel=1
   let g:tex_conceal='abdmg'

   let g:UltiSnipsExpandTrigger = '<tab>'
   let g:UltiSnipsJumpForwardTrigger = '<tab>'
   let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
