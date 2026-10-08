
" which-key Highlight
highlight WhichKey ctermbg=NONE  " 修改按键
highlight WhichKeyDesc ctermbg=NONE  " 修改描述文本
highlight WhichKeyGroup ctermbg=NONE  " 修改分组名称颜色为黄色

" ============================================================================
" ~/.vim/after/plugin/highlights.vim
" 终端 Vim 高亮配置（无 GUI 颜色）
" 使用 256 色代码，适用于大多数现代终端
" ============================================================================
	" ------------------------------------------------------------------------
	" 基础界面与光标
	" ------------------------------------------------------------------------
	highlight Normal         guibg=#282c34 guifg=#abb2bf gui=NONE      " 普通文本
	highlight Cursor         guifg=#282c34 guibg=#abb2bf gui=NONE      " 光标下的字符
	highlight lCursor        guifg=#282c34 guibg=#abb2bf gui=NONE      " 语言映射时光标下的字符
	highlight CursorIM       guifg=#282c34 guibg=#abb2bf gui=NONE      " IME 模式下的光标
	highlight CursorColumn   guibg=#2c323c gui=NONE                    " 光标所在的屏幕列
	highlight CursorLine     guibg=#323944 gui=NONE cterm=NONE         " 光标所在的屏幕行
	highlight ColorColumn    guibg=#2c323c gui=NONE                    " 颜色列（colorcolumn）
	highlight Conceal        guifg=#5c6370 gui=NONE                    " 隐藏文本的占位符
	highlight EndOfBuffer    guifg=#3e4451 gui=NONE                    " 缓冲区末尾的填充行（~）
	highlight NonText        guifg=#3e4451 gui=NONE                    " 文本中不存在的特殊字符
	highlight SpecialKey     guifg=#3e4451 gui=NONE                    " 特殊键及空白字符

	" ------------------------------------------------------------------------
	" 注释与语法
	" ------------------------------------------------------------------------
	highlight vimComment     gui=italic guifg=#5c6370 guibg=NONE       " 仅 Vim script 文件里的 " 注释
	highlight Comment        gui=italic guifg=#5c6370 guibg=NONE       " 通用注释

	" ------------------------------------------------------------------------
	" 搜索与替换
	" ------------------------------------------------------------------------
	highlight Search         guifg=#282c34 guibg=#e5c07b gui=NONE      " 上次搜索模式的高亮
	highlight CurSearch      guifg=#282c34 guibg=#98c379 gui=NONE      " 当前搜索匹配
	highlight IncSearch      guifg=#282c34 guibg=#e5c07b gui=NONE      " 增量搜索高亮
	highlight MatchParen     guifg=#abb2bf guibg=#3e4451 gui=underline,bold " 匹配的括号

	" ------------------------------------------------------------------------
	" 差异模式 (Diff)
	" ------------------------------------------------------------------------
	highlight DiffAdd        guifg=#98c379 guibg=#282c34 gui=NONE      " Diff 模式：新增的行
	highlight DiffChange     guifg=#e5c07b guibg=#282c34 gui=NONE      " Diff 模式：改变的行
	highlight DiffDelete     guifg=#e86671 guibg=#282c34 gui=NONE      " Diff 模式：删除的行
	highlight DiffText       guifg=#e5c07b guibg=#2c323c gui=NONE      " Diff 模式：行内改变的文字
	highlight DiffTextAdd    guifg=#98c379 guibg=#2c323c gui=NONE      " Diff 模式：行内新增的文字

	" ------------------------------------------------------------------------
	" 消息与命令行
	" ------------------------------------------------------------------------
	highlight ErrorMsg       guifg=#e86671 guibg=NONE gui=bold         " 命令行上的错误消息
	highlight WarningMsg     guifg=#e5c07b guibg=NONE gui=NONE         " 警告消息
	highlight ModeMsg        guifg=#98c379 guibg=NONE gui=bold         " showmode 消息
	highlight MsgArea        guifg=#abb2bf guibg=NONE gui=NONE         " 命令行区域
	highlight MoreMsg        guifg=#98c379 guibg=NONE gui=NONE         " more-prompt
	highlight Question       guifg=#98c379 guibg=NONE gui=NONE         " hit-enter 提示
	highlight Title          guifg=#e5c07b guibg=NONE gui=bold         " :set all、:autocmd 等输出的标题
	highlight MessageWindow  guifg=#e5c07b guibg=#2c323c gui=NONE      " :echowindow 使用的消息弹出窗口

	" ------------------------------------------------------------------------
	" 弹出菜单与补全
	" ------------------------------------------------------------------------
	highlight Pmenu          guifg=#abb2bf guibg=#3e4451 gui=NONE      " 弹出菜单：普通项
	highlight PmenuSel       guifg=#282c34 guibg=#e5c07b gui=NONE      " 弹出菜单：选中项
	highlight PmenuKind      guifg=#61afef guibg=#2c323c gui=NONE      " 弹出菜单：普通项的 kind
	highlight PmenuKindSel   guifg=#282c34 guibg=#e5c07b gui=NONE      " 弹出菜单：选中项的 kind
	highlight PmenuExtra     guifg=#5c6370 guibg=#2c323c gui=NONE      " 弹出菜单：普通项的额外文本
	highlight PmenuExtraSel  guifg=#282c34 guibg=#e5c07b gui=NONE      " 弹出菜单：选中项的额外文本
	highlight PmenuSbar      guibg=#3e4451 gui=NONE                    " 弹出菜单：滚动条
	highlight PmenuThumb     guibg=#5c6370 gui=NONE                    " 弹出菜单：滚动条滑块
	highlight PmenuMatch     guifg=#98c379 guibg=#2c323c gui=bold      " 弹出菜单：普通项中的匹配文本
	highlight PmenuMatchSel  guifg=#98c379 guibg=#e5c07b gui=bold      " 弹出菜单：选中项中的匹配文本
	highlight PmenuBorder    guifg=#3e4451 guibg=#2c323c gui=NONE      " 弹出菜单：边框字符
	highlight PmenuShadow    guibg=#3e4451 gui=NONE                    " 弹出菜单：阴影
	highlight ComplMatchIns  guifg=#98c379 guibg=NONE gui=bold         " 当前插入的补全匹配文本
	highlight PreInsert      guifg=#5c6370 guibg=NONE gui=NONE         " preinsert 插入的文本
	highlight PopupSelected  guifg=#282c34 guibg=#e5c07b gui=NONE      " popup_menu() 弹出窗口
	highlight PopupNotification guifg=#e5c07b guibg=#2c323c gui=NONE   " popup_notification() 弹出窗口
	highlight WildMenu       guifg=#282c34 guibg=#e5c07b gui=NONE      " wildmenu 补全中的当前匹配

	" ------------------------------------------------------------------------
	" 状态栏、标签页与窗口
	" ------------------------------------------------------------------------
	highlight StatusLine     guifg=#abb2bf guibg=NONE gui=bold         " 当前窗口的状态行
	highlight StatusLineNC   guifg=#5c6370 guibg=#2c323c gui=NONE      " 非当前窗口的状态行
	highlight StatusLineTerm guifg=#abb2bf guibg=#3e4451 gui=bold      " 当前终端窗口的状态行
	highlight StatusLineTermNC guifg=#5c6370 guibg=#2c323c gui=NONE    " 非当前终端窗口的状态行
	highlight VertSplit      guifg=#3e4451 guibg=NONE gui=NONE         " 垂直分割窗口的分隔列
	highlight TabLineFill    gui=bold guibg=#696969 guifg=#282c34         " 标签页行：没有标签的地方
	highlight TabLine       cterm=NONE gui=NONE guibg=NONE guifg=#5c6370         " 标签页行：非活动标签页标签
	highlight TabLineSel     guifg=#abb2bf guibg=#2c323c gui=bold      " 标签页行：活动标签页标签
	highlight TabPanel       guifg=#5c6370 guibg=#3e4451 gui=NONE      " TabPanel：非活动标签页标签
	highlight TabPanelFill   guifg=#5c6370 guibg=#2c323c gui=NONE      " TabPanel：没有标签的地方
	highlight TabPanelSel    guifg=#abb2bf guibg=#3e4451 gui=bold      " TabPanel：活动标签页标签
	highlight Terminal       guifg=#abb2bf guibg=NONE gui=NONE         " terminal 窗口
	highlight SignColumn     guifg=#5c6370 guibg=NONE gui=NONE         " 显示 signs 的列
	highlight Folded         guifg=#5c6370 guibg=#2c323c gui=NONE      " 关闭折行使用的行
	highlight FoldColumn     guifg=#5c6370 guibg=NONE gui=NONE         " foldcolumn
	highlight CursorLineFold guifg=#5c6370 guibg=NONE gui=NONE         " 光标行的折叠列
	highlight CursorLineSign guifg=#5c6370 guibg=NONE gui=NONE         " 光标行的符号列


	" ------------------------------------------------------------------------
	" 行号
	" ------------------------------------------------------------------------
	highlight LineNr         gui=bold guibg=#282c34 guifg=#3e4451               " 行号
	highlight CursorLineNr   guifg=#61afef guibg=#2c323c gui=bold cterm=NONE    " 光标行的行号

	" ------------------------------------------------------------------------
	" 目录与快速修复
	" ------------------------------------------------------------------------
	highlight Directory      guifg=#61afef gui=NONE                " 目录名
	highlight QuickFixLine   guibg=#2c323c gui=bold                " quickfix 窗口中的当前项

	" ------------------------------------------------------------------------
	" 拼写检查
	" ------------------------------------------------------------------------
	highlight SpellBad       guibg=NONE guifg=#e86671 gui=underline " 拼写检查器无法识别的单词
	highlight SpellCap       guibg=NONE guifg=#e5c07b gui=underline " 应以大写字母开头的单词
	highlight SpellLocal     guibg=NONE guifg=#61afef gui=underline " 在另一区域使用的单词
	highlight SpellRare      guibg=NONE guifg=#c678dd gui=underline " 很少使用的单词

	" ------------------------------------------------------------------------
	" 可视模式
	" ------------------------------------------------------------------------
	highlight Visual         guifg=NONE guibg=#3e4451 gui=NONE   " 可视模式选择
	highlight VisualNOS      guifg=NONE guibg=#3e4451 gui=NONE   " Not Owning the Selection 时的可视模式

	" ------------------------------------------------------------------------
	" 用户自定义 (User1 - User9)
	" ------------------------------------------------------------------------
	highlight User1          guifg=#e86671 guibg=NONE   " 用户自定义高亮 1
	highlight User2          guifg=#98c379 guibg=NONE   " 用户自定义高亮 2
	highlight User3          guifg=#e5c07b guibg=NONE   " 用户自定义高亮 3
	highlight User4          guifg=#61afef guibg=NONE   " 用户自定义高亮 4
	highlight User5          guifg=#c678dd guibg=NONE   " 用户自定义高亮 5
	highlight User6          guifg=#5c6370 guibg=NONE   " 用户自定义高亮 6
	highlight User7          guifg=#abb2bf guibg=NONE   " 用户自定义高亮 7
	highlight User8          guifg=#e86671 guibg=NONE   " 用户自定义高亮 8
	highlight User9          guifg=#98c379 guibg=NONE   " 用户自定义高亮 9

	" ------------------------------------------------------------------------
	" GUI 专用组（仅 guifg/guibg 有效）
	" ------------------------------------------------------------------------
	highlight TitleBar       guifg=#abb2bf guibg=#3e4451   " 活动窗口标题栏
	highlight TitleBarNC     guifg=#5c6370 guibg=#2c323c   " 非活动窗口标题栏
	highlight Menu           guifg=#abb2bf guibg=#3e4451   " 菜单/工具栏
	highlight Scrollbar      guifg=#5c6370 guibg=#282c34   " 滚动条
	highlight Tooltip        guifg=#abb2bf guibg=#3e4451   " 工具提示

