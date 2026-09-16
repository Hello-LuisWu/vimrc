" ========== 基础设置 ==========
" 禁用 Vi 兼容模式，使用 Vim 的完整功能
set nocompatible

" 设置 Vim 内部使用的字符编码
set encoding=utf-8

" 设置当前文件的字符编码
set fileencoding=utf-8

" 设置打开文件时自动检测的字符编码顺序
set fileencodings=
	\utf-8,
	\ucs-bom,
	\gb18030,
	\gbk,gb2312,
	\cp936

" 设置默认文件格式为 Unix（LF 换行）
set fileformat=unix

" 设置打开文件时自动检测的换行格式
set fileformats=
	\unix,
	\dos,
	\mac

" 设置终端使用的字符编码
set termencoding=utf-8

" 如果支持语言菜单，则将菜单语言设置为简体中文
if exists('+langmenu')
	set langmenu=zh_CN.UTF-8
endif

" 设置帮助文档优先使用中文
set helplang=cn

" 允许退格键删除：
" indent：自动缩进
" eol：跨行删除
" start：删除到行首
" set backspace=2
set backspace=
	\indent,
	\eol,
	\start

" 文件备份
" 不创建备份文件
set nobackup

" 不创建交换文件（.swp）
set noswapfile

" 写入文件时不创建临时备份文件
set nowritebackup

" 不创建撤销文件（.un~）
set noundofile

" 设置备份文件的保存目录
" 末尾的 // 表示保留原文件的完整路径结构
" set backupdir=~/.vim/tmp/backup//

" 设置交换文件的保存目录
" 末尾的 // 表示保留原文件的完整路径结构
" set directory=~/.vim/tmp/swap//

" 设置撤销文件的保存目录
" 末尾的 // 表示保留原文件的完整路径结构
" set undodir=~/.vim/tmp/undo//

" 历史记录
" 设置命令历史、搜索历史等最多保存 1000 条
set history=1000

" 设置撤销操作的最大层数为 1000
set undolevels=1000

" 文件重新载入时最多保留 10000 个撤销操作
set undoreload=10000

" ========== 显示与界面 ==========

" 使用 24-bit 真色彩模式
if has('termguicolors')
  set termguicolors
endif

" 始终显示符号列，避免诊断、断点等符号出现时导致文本区域左右跳动
set signcolumn=yes

" 设置折叠栏宽度为 2 列, 0：不显示折叠栏, 1~9：设置折叠栏宽度
set foldcolumn=0

" 启用代码折叠
set foldenable

" 设置默认折叠级别为 99，打开文件时默认展开大部分折叠
set foldlevel=99

" 设置打开文件时的最大折叠级别 99：基本保持全部展开
set foldlevelstart=99

" 使用标记折叠（{{{ / }}}）
set foldmethod=marker
"{{{
" 6种折叠方式:
" manual：手动折叠
" indent：根据缩进折叠
" expr：根据表达式折叠
" syntax：根据语法折叠
" marker：根据 {{{ ... }}} 标记折叠
" diff: 对没有更改的文本进行折叠
"}}}

" 设置深色背景
set background=dark

" 使用 Gruvbox 配色方案
colorscheme gruvbox

" 行设置
" 设置行号栏宽度为 4 个字符
set numberwidth=3

" 显示绝对行号
set number

" 显示相对行号
set relativenumber

" 显示光标所在位置的行号和列号
" set ruler

" 不在单词内部换行
set linebreak

" 禁止自动换行
set nowrap

" 设置文本宽度为 80 个字符
set textwidth=80

" 设置文本自动格式化行为
" m 折行时允许在双字节字符后断开, 主要用于多字节字符（如中文）环境。
" M 折行时不允许在双字节字符前断开, 与 m 配合，更精细地控制多字节字符的折行。
" l 插入模式下，即使输入超过 textwidth，也不自动折行
set formatoptions+=mM

" 设置颜色列
" +1、+2、+3：在 textwidth 后 1、2、3 列显示
" -22：在窗口右侧倒数第 22 列显示
" 33：在第 33 列显示
" set colorcolumn=+1,+2,+3,-22,33

" 高亮当前列
" set cursorcolumn

" 高亮当前行
set cursorline

" 执行可能失败的操作时，显示确认提示,如：未保存退出或只读文件的时候，弹出确认
set confirm

" 不在状态栏显示当前模式
set noshowmode

" 显示正在输入的命令
set showcmd

" 获取当前工作目录，并将 HOME 目录替换为 ~
function! CurDir()
	" 获取当前工作目录
	let curdir = getcwd()

	" 将 $HOME 替换为 ~，让路径显示更加简洁
	let curdir = substitute(curdir, $HOME, "~", "g")

	" 返回处理后的目录路径
	return curdir
endfunction

" normol 模式下,光标可以移动到最后一个字的后面
set virtualedit=
	\block,
	\onemore

" 显示状态行:
" 0	从不显示状态栏
" 1	只有多个窗口时显示
" 2	始终显示一个状态栏
" 3	使用全局状态栏
set laststatus=2

"标签页
" 2 总是显示标签页，0 不显示，1 出现多个标签页才显示
set showtabline=2

" 最多可以打开15个标签页，默认10
set tabpagemax=15

" \eol:        回车
" \tab:        Tab
" \trail       行尾多余空格
" \space:      单词间的空格
" \nbsp        不换行空格
" \extends     屏幕右侧还有内容
" \precedes    屏幕左侧还有内容
set list
set listchars=
	\eol:\󰌑,
	\tab:\|\ ,
	\trail:.,
	\space:\ ,
	\nbsp:+,
	\extends:»,
	\precedes:«

" 设置窗口分隔线
" 设置缓冲区末尾填充字符
" vert: 垂直窗口分隔线
" eob: 文件末尾非编辑区的填充字符
" diff: Diff 区域填充
" fold: 折叠区域填充
" foldopen: 折叠展开标记
" foldclose: 折叠关闭标记
" foldsep: 折叠区域分隔符
set fillchars=
	\vert:\|,
	\eob:\ ,
	\diff:~,
	\fold:·,
	\foldopen:,
	\foldclose:,
	\foldsep:│,
	\lastline:@

" 启用命令行补全菜单(默认)
set wildmenu

" 设置命令行补全的行为
set wildmode=longest:
	\full,
	\full

" 设置补全菜单的显示行为
" menu: 有多个匹配项时显示补全菜单
" menuone: 即使只有一个匹配项，也显示补全菜单
" noselect: 补全菜单打开时，不自动选择第一项
set completeopt=
	\menu,
	\menuone,
	\noselect

" 设置插入模式下补全时使用的来源
" .	当前缓冲区
" w	其他窗口中的缓冲区
" b	其他已加载的缓冲区
" u	未加载但已列入缓冲区列表的缓冲区
" t	标签（tags）
" i	当前及包含文件中的头文件
set complete=.,w,b,u,t,i
set complete+=kspell

" 控制命令行和状态信息的显示，减少不必要的提示
" f	文件名等信息
" i	插入模式下显示文件信息
" l	减少行数/列数等信息
" n	文件名显示时使用 [No Name] 等简短形式
" x	不显示写入文件时的字节数
" t	截断长文件名
" T	截断消息中的文件名
" o	覆盖文件时减少提示
" O	读取文件时减少提示
" F	不显示当前文件名
" I	不显示启动欢迎信息
" c	补全菜单出现时不显示额外匹配信息
" S	搜索时减少搜索相关提示
" W	不显示搜索开始时的 search hit BOTTOM/TOP 等提示
" A	不显示交换文件相关警告
" set shortmess+=cIF
set shortmess+=c
set shortmess+=I
set shortmess+=F

" 设置补全菜单（Popup Menu）的最大高度为 10 行
set pumheight=10

" 新建垂直分割窗口时，在当前窗口右侧打开
set splitright

" 新建水平分割窗口时，在当前窗口下方打开
set splitbelow

" 新建窗口时，尽量保持窗口大小
set equalalways

" 删除窗口后自动重新分配窗口大小
set eadirection=both

" 设置隐藏字符的显示级别
" 0	不隐藏任何字符
" 1	隐藏字符，但在部分情况下保留占位
" 2	隐藏字符，并使用 conceal 字符替代
" 3	最大程度隐藏字符
set conceallevel=2

" 设置在什么模式下启用 conceal
" n	Normal:       普通模式
" v	Visual:       可视模式
" i	Insert:       插入模式
" c	Command-line: 命令行模式
set concealcursor=v

" 允许在不保存的情况下切换缓冲区
" 修改后的缓冲区可以暂时隐藏，之后再继续编辑
set hidden

" 禁用错误操作时的声音提示
set noerrorbells

" 禁止使用视觉提示代替声音提示
set novisualbell

" ========== 编辑体验 ==========

" 拼写检查设置（已经设置了autocmd）
" 禁用拼写检查
set nospell

" 设置拼写检查语言为英语和中文
set spelllang=en_us,cjk

" 文件写入时在文件末尾保留换行符
set endofline

" 写入文件时修正文件末尾换行符
set fixendofline

" 不使用文件末尾 DOS 风格的 CTRL-Z
set noendoffile

" 缩进
" 根据上一行的缩进自动缩进新行
set autoindent

" 根据代码语法智能调整缩进
set smartindent

" 禁用 C 语言风格的自动缩进
set nocindent

" 按 Tab 键插入真正的 Tab 字符，不转换为空格
set noexpandtab

" 一个 Tab 字符显示为 4 个空格宽度
set tabstop=4

" 自动缩进时使用 4 个空格宽度
set shiftwidth=4

" 插入模式下 Tab / Backspace 调整缩进时使用 4 个空格宽度
set softtabstop=4

" 删除缩进时，按照 shiftwidth 的宽度进行退格
set shiftround

" 允许连续使用 < 和 > 调整缩进
set nosmarttab

" 搜索
" 搜索结果高亮
set hlsearch

 " 搜索输入时逐字高亮
set incsearch

" 搜索忽略大小写
set ignorecase

" 如果搜索包含大写则区分大小写
set smartcase

" 搜索到文件末尾后继续从文件开头搜索
set wrapscan

" 允许光标在行首/行尾继续移动到相邻行
" <：左方向键
" >：右方向键
" [：左方向键
" ]：右方向键
" h：向左移动
" l：向右移动
" set whichwrap+=<,>,[,],h,l
set whichwrap+=<
set whichwrap+=>
set whichwrap+=[
set whichwrap+=]
set whichwrap+=h
set whichwrap+=l

" 数字常量默认使用十进制
set nrformats-=octal

" 跨系统自动适配剪贴板（macOS + Linux/WSL + Windows）
if has('mac')
  " macOS：使用系统剪贴板作为 Vim 的默认寄存器
  set clipboard=unnamed
elseif has('unix')
  " Linux / Unix：使用系统剪贴板作为默认寄存器
  set clipboard=unnamedplus
elseif has('win32')
  " Windows：使用系统剪贴板作为默认寄存器
  set clipboard=unnamedplus
endif

" ============================================================
" 窗口标题
" ============================================================
" 启用窗口标题
" Vim 会根据 'titlestring' 或当前文件信息自动设置标题
set title

" 设置窗口标题最大使用窗口宽度的 85%
" 标题过长时优先显示路径末尾，并使用 < 表示被截断
set titlelen=85

" 退出 Vim 时恢复原窗口标题失败时使用的标题
set titleold="Thanks for flying Vim"

" 自定义 Vim 窗口标题
" %t	文件名，不含路径
" %F	完整路径
" %l	当前行号
" %L	总行数
" %P	当前窗口在文件中的百分比位置
" %M	修改标志
" %a	参数列表状态
" %{...}	执行 Vim 表达式
" %<	截断点，过长时从左边截断
" %=	左右对齐分隔
" %( %)	条件组，常用于按需添加空格
" set titlestring=%F%(\ %M%)\ %(\ %L%)
set titlestring=%F
" n:普通模式 (Normal)	允许用鼠标移动光标、点击窗口等。
" v:可视模式 (Visual)	允许用鼠标选择文本。
" i:插入模式 (Insert)	允许用鼠标点击来定位光标位置。
" c:命令行模式 (Command-line)	允许在输入命令时使用鼠标。
" h:帮助文件 (Help)	在帮助文档中启用上述所有模式。
" a:所有模式 (All)	启用以上所有模式。这是最常用的设置。
" r:提示符 (Prompts)	在 hit-enter 或 more-prompt 提示符下启用鼠标。
" 所有模式启用鼠标（调整窗口大小、点击跳转等）
" set mouse=a
" 完全禁用鼠标（清空值）
set mouse=

" 在 Visual 模式下是否选中光标下的字符,和selectmode配合使用, 以实现 Windows 风格的选择
" inclusive: 包含光标所在位置
" exclusive: 不包含光标所在位置
set selection=inclusive

" 允许通过鼠标或键盘进入 Select 模式
" mouse: 使用鼠标选择文本时进入 Select 模式
" key: Shift+方向键等特殊键开始选择时进入 Select 模式。
" cmd: 用 v、V、Ctrl-V 命令开始选择时进入 Select 模式（此处未包含）。
set selectmode=mouse,key

" 光标距离窗口顶部和底部至少保留 3 行
set scrolloff=3

" 水平滚动时，光标距离窗口左右边缘至少保留 5 列
set sidescrolloff=5

" 文件在 Vim 外部被修改时，允许实时加载文件
set autoread

" 文件类型
" 启用文件类型检测
" filetype on

" 启用文件类型插件
" 根据文件类型加载对应的插件设置
" filetype plugin on

" 启用文件类型缩进
" 根据文件类型使用对应的缩进规则
" filetype indent on

" 缩写
filetype plugin indent on

" 重新检测当前文件的文件类型
filetype detect

" 启用语法高亮
syntax on


" 输入括号时高亮显示对应的匹配括号
set showmatch

" 匹配括号高亮的显示时间，单位为 0.1 秒
" 5 = 0.5 秒
set matchtime=5

" ========== 性能优化 ==========
" 重绘屏幕时暂时不更新显示，提高执行宏、脚本等操作时的性能
set lazyredraw

" 告诉 Vim 当前终端响应速度较快，可减少不必要的终端等待
set ttyfast

" 设置映射键的等待时间为 300 毫秒
" 用于判断多键组合映射是否继续输入
set timeoutlen=300

" 设置触发 CursorHold 等事件的等待时间为 300 毫秒
" 也会影响部分插件的响应速度
set updatetime=300
