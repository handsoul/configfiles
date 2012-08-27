"语法高亮
syntax on
"配色方案
if has("gui_running")
    colorscheme evening
endif

"显示行号
set nu
"状态栏标尺
set ruler
"tab设置
set shiftwidth=4
set softtabstop=4
"显示目前执行指令
set showcmd
"
"设定行首和行尾的backspace的动作
set whichwrap=b,s,<,>,[,]
"自动切换到文件所在目录
set autochdir
"打开插件
filetype plugin indent on
"搜索时高亮
set hlsearch
"消除烦人的beep
set t_vb=
set hidden
set smartindent
set backspace=indent,eol,start
set laststatus=2
"自动折叠
"set foldenable
"set foldmethod=syntax
"字体...
"set guifont=Bitstream\ Vera\ Sans\ Mono\ 12
set guifont=Inconsolata\ Medium\ 12
set guifontwide=Microsoft\ YaHei\ 10
"set guifontwide=AR\ PL\ UKai\ CN\ 12
"光标离窗口底部5行时自动滚动
set scrolloff=5

"注释内部换行自动加上空格和星号
set formatoptions=tcqro
"非兼容模式
set nocompatible

"状态栏的格式
"set statusline=%F%m%r,%Y,%{&fileformat}\ \ \ ASCII=\%b,HEX=\%B\ \ \ %l,%c%V\ %p%%\ \ \ [\total\ %L\ lines\ ]
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")} 
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 

"不同时显示多个文件的tag，只显示当前文件的
let Tlist_Show_One_File = 1
"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow = 1
"在右侧窗口中显示taglist窗口
let Tlist_Use_Right_Window = 1
hi CursorLine  ctermbg=Black  guibg=black cterm=NONE
set cursorline
"键盘映射,逐渐完善中...
"这样就不用按shift了
map ; :
"normal模式下的ctrl+S
map <C-S> <ESC>:w<ENTER>
"插入模式下的ctrl+S
imap <C-S> <ESC>:w<ENTER>a
"normal模式下F2用来打开和关闭taglist
map <F2> <ESC>:Tlist<ENTER>
"F2在insert下打开和关闭taglist的方式
imap <F2> <ESC>:Tlist<ENTER>a
normal模式下F5用来刷新taglist,并且列表自动跳转到当前位置处
map <F5> <ESC>:TlistUpdate<ENTER>:TlistSync<Enter>
"F5在insert模式下刷新taglist的方式，并且列表自动跳转到当前位置处
imap <F5> <ESC>:TlistUpdate<ENTER>:TlistSync<ENTER>a
"save file , <C-S> is not usable under console
"so F3 is use here.
imap <F3> <ESC>:w<ENTER>i
map <F3> <ESC>:w<ENTER>
"switch between the windows
imap <C-H> <ESC><C-W>hi
imap <C-L> <ESC><C-W>li
imap <C-K> <ESC><C-W>ki
imap <C-J> <ESC><C-W>ji
map <C-H> <ESC><C-W>h
map <C-L> <ESC><C-W>l
map <C-K> <ESC><C-W>k
map <C-J> <ESC><C-W>j
