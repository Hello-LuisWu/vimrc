" which-key Highlight
highlight WhichKey ctermbg=NONE  " 修改按键
highlight WhichKeyDesc ctermbg=NONE  " 修改描述文本
highlight WhichKeyGroup ctermbg=NONE  " 修改分组名称颜色为黄色

" ============================================================================
" ~/.vim/after/plugin/highlights.vim
" 终端 Vim 高亮配置（无 GUI 颜色）
" 使用 256 色代码，适用于大多数现代终端
" ============================================================================

augroup MyTerminalHighlights
    autocmd!
    " 当颜色方案改变时，重新应用自定义高亮
    autocmd ColorScheme * call s:ApplyHighlights()
augroup END

function! s:ApplyHighlights() abort
	" ------------------------------------------------------------------------
	" 基础界面与光标
	" ------------------------------------------------------------------------
	highlight Normal         ctermbg=236 ctermfg=253 cterm=NONE      " 普通文本
	highlight Cursor         ctermfg=236 ctermbg=253 cterm=NONE      " 光标下的字符
	highlight lCursor        ctermfg=236 ctermbg=253 cterm=NONE      " 语言映射时光标下的字符
	highlight CursorIM       ctermfg=236 ctermbg=253 cterm=NONE      " IME 模式下的光标
	highlight CursorColumn   ctermbg=235 cterm=NONE                  " 光标所在的屏幕列
	highlight CursorLine     ctermbg=235 cterm=NONE                  " 光标所在的屏幕行
	highlight ColorColumn    ctermbg=235 cterm=NONE                  " 颜色列（colorcolumn）
	highlight Conceal        ctermfg=241 cterm=NONE                  " 隐藏文本的占位符
	highlight EndOfBuffer    ctermfg=238 cterm=NONE                  " 缓冲区末尾的填充行（~）
	highlight NonText        ctermfg=238 cterm=NONE                  " 文本中不存在的特殊字符
	highlight SpecialKey     ctermfg=238 cterm=NONE                  " 特殊键及空白字符
	" ------------------------------------------------------------------------
	" 注释与语法
	" ------------------------------------------------------------------------
	highlight vimComment     cterm=italic ctermfg=241 ctermbg=NONE  " 仅 Vim script 文件里的 " 注释
	highlight Comment        term=italic ctermfg=241 ctermbg=NONE   " 通用注释

	" ------------------------------------------------------------------------
	" 搜索与替换
	" ------------------------------------------------------------------------
	highlight Search         ctermfg=236 ctermbg=180 cterm=NONE      " 上次搜索模式的高亮
	highlight CurSearch      ctermfg=236 ctermbg=114 cterm=NONE      " 当前搜索匹配
	highlight IncSearch      ctermfg=236 ctermbg=180 cterm=NONE      " 增量搜索高亮
	highlight MatchParen     ctermfg=253 ctermbg=239 cterm=underline,bold        " 匹配的括号

	" ------------------------------------------------------------------------
	" 差异模式 (Diff)
	" ------------------------------------------------------------------------
	highlight DiffAdd        ctermfg=114 ctermbg=236 cterm=NONE      " Diff 模式：新增的行
	highlight DiffChange     ctermfg=180 ctermbg=236 cterm=NONE      " Diff 模式：改变的行
	highlight DiffDelete     ctermfg=204 ctermbg=236 cterm=NONE      " Diff 模式：删除的行
	highlight DiffText       ctermfg=180 ctermbg=235 cterm=NONE      " Diff 模式：行内改变的文字
	highlight DiffTextAdd    ctermfg=114 ctermbg=235 cterm=NONE      " Diff 模式：行内新增的文字

	" ------------------------------------------------------------------------
	" 消息与命令行
	" ------------------------------------------------------------------------
	highlight ErrorMsg       ctermfg=204 ctermbg=NONE cterm=bold     " 命令行上的错误消息
	highlight WarningMsg     ctermfg=180 ctermbg=NONE cterm=NONE     " 警告消息
	highlight ModeMsg        ctermfg=114 ctermbg=NONE cterm=bold     " showmode 消息
	highlight MsgArea        ctermfg=250 ctermbg=NONE cterm=NONE     " 命令行区域
	highlight MoreMsg        ctermfg=114 ctermbg=NONE cterm=NONE     " more-prompt
	highlight Question       ctermfg=114 ctermbg=NONE cterm=NONE     " hit-enter 提示
	highlight Title          ctermfg=180 ctermbg=NONE cterm=bold     " :set all、:autocmd 等输出的标题
	highlight MessageWindow  ctermfg=180 ctermbg=235 cterm=NONE      " 消息弹出窗口, " :echowindow 使用的消息弹出窗口

	" ------------------------------------------------------------------------
	" 弹出菜单与补全
	" ------------------------------------------------------------------------
	highlight Pmenu          ctermfg=250 ctermbg=238 cterm=NONE      " 弹出菜单：普通项
	highlight PmenuSel       ctermfg=236 ctermbg=180 cterm=NONE      " 弹出菜单：选中项
	highlight PmenuKind      ctermfg=75  ctermbg=235 cterm=NONE      " 弹出菜单：普通项的 kind
	highlight PmenuKindSel   ctermfg=236 ctermbg=180 cterm=NONE      " 弹出菜单：选中项的 kind
	highlight PmenuExtra     ctermfg=243 ctermbg=235 cterm=NONE      " 弹出菜单：普通项的额外文本
	highlight PmenuExtraSel  ctermfg=236 ctermbg=180 cterm=NONE      " 弹出菜单：选中项的额外文本
	highlight PmenuSbar      ctermbg=238 cterm=NONE                  " 弹出菜单：滚动条
	highlight PmenuThumb     ctermbg=243 cterm=NONE                  " 弹出菜单：滚动条滑块
	highlight PmenuMatch     ctermfg=114 ctermbg=235 cterm=bold      " 弹出菜单：普通项中的匹配文本
	highlight PmenuMatchSel  ctermfg=114 ctermbg=180 cterm=bold      " 弹出菜单：选中项中的匹配文本
	highlight PmenuBorder    ctermfg=240 ctermbg=235 cterm=NONE      " 弹出菜单：边框字符
	highlight PmenuShadow    ctermbg=238 cterm=NONE                  " 弹出菜单：阴影
	highlight ComplMatchIns  ctermfg=114 ctermbg=NONE cterm=bold     " 当前插入的补全匹配文本
	highlight PreInsert      ctermfg=243 ctermbg=NONE cterm=NONE     " preinsert 插入的文本
	highlight PopupSelected  ctermfg=236 ctermbg=180 cterm=NONE      " popup_menu() 弹出窗口
	highlight PopupNotification ctermfg=180 ctermbg=235 cterm=NONE   " popup_notification() 弹出窗口
	highlight WildMenu       ctermfg=236 ctermbg=180 cterm=NONE      " wildmenu 补全中的当前匹配

	" ------------------------------------------------------------------------
	" 状态栏、标签页与窗口
	" ------------------------------------------------------------------------
	highlight StatusLine     ctermfg=250 ctermbg=NONE cterm=bold     " 当前窗口的状态行
	highlight StatusLineNC   ctermfg=243 ctermbg=235 cterm=NONE      " 非当前窗口的状态行
	highlight StatusLineTerm ctermfg=250 ctermbg=238 cterm=bold     " 当前终端窗口的状态行
	highlight StatusLineTermNC ctermfg=243 ctermbg=235 cterm=NONE   " 非当前终端窗口的状态行
	highlight VertSplit      ctermfg=240 ctermbg=NONE cterm=NONE    " 垂直分割窗口的分隔列
	highlight TabLineFill    cterm=bold ctermbg=NONE ctermfg=238    " 标签页行：没有标签的地方
	highlight TabLine        cterm=NONE ctermbg=NONE ctermfg=241    " 标签页行：非活动标签页标签
	highlight TabLineSel     ctermfg=253 ctermbg=235 cterm=bold     " 标签页行：活动标签页标签
	highlight TabPanel       ctermfg=243 ctermbg=238 cterm=NONE     " TabPanel：非活动标签页标签
	highlight TabPanelFill   ctermfg=243 ctermbg=235 cterm=NONE     " TabPanel：没有标签的地方
	highlight TabPanelSel    ctermfg=250 ctermbg=238 cterm=bold     " TabPanel：活动标签页标签
	highlight Terminal       ctermfg=250 ctermbg=NONE cterm=NONE    " terminal 窗口
	highlight SignColumn     ctermfg=243 ctermbg=NONE cterm=NONE    " 显示 signs 的列
	highlight Folded         ctermfg=243 ctermbg=235 cterm=NONE     " 关闭折行使用的行
	highlight FoldColumn     ctermfg=243 ctermbg=NONE cterm=NONE    " foldcolumn
	highlight CursorLineFold ctermfg=243 ctermbg=NONE cterm=NONE    " 光标行的折叠列
	highlight CursorLineSign ctermfg=243 ctermbg=NONE cterm=NONE    " 光标行的符号列
	" highlight StatusLine     ctermfg=252 ctermbg=NONE cterm=bold  " 当前窗口的状态行
	" highlight StatusLineNC   ctermfg=245 ctermbg=236   " 非当前窗口的状态行
	" highlight StatusLineTerm ctermfg=252 ctermbg=238 cterm=bold  " 当前终端窗口的状态行
	" highlight StatusLineTermNC ctermfg=245 ctermbg=236 " 非当前终端窗口的状态行
	" highlight VertSplit      ctermfg=240 ctermbg=NONE  " 垂直分割窗口的分隔列
	" highlight TabLineFill cterm=bold ctermbg=NONE ctermfg=238           " 标签页行：没有标签的地方
	" highlight TabLine cterm=NONE ctermbg=NONE ctermfg=242             " 标签页行：非活动标签页标签
	" highlight TabLineSel ctermfg=253 ctermbg=236 cterm=bold  " 标签页行：活动标签页标签
	" highlight TabPanel       ctermfg=245 ctermbg=238   " TabPanel：非活动标签页标签
	" highlight TabPanelFill   ctermfg=245 ctermbg=236   " TabPanel：没有标签的地方
	" highlight TabPanelSel    ctermfg=252 ctermbg=238 cterm=bold  " TabPanel：活动标签页标签
	" highlight Terminal       ctermfg=252 ctermbg=NONE  " terminal 窗口
	" highlight SignColumn     ctermfg=245 ctermbg=NONE  " 显示 signs 的列
	" highlight Folded         ctermfg=245 ctermbg=236   " 关闭折行使用的行
	" highlight FoldColumn     ctermfg=245 ctermbg=NONE  " foldcolumn
	" highlight CursorLineFold ctermfg=245               " 光标行的折叠列
	" highlight CursorLineSign ctermfg=245               " 光标行的符号列

	" ------------------------------------------------------------------------
	" 行号
	" ------------------------------------------------------------------------
	highlight LineNr cterm=bold ctermbg=236 ctermfg=239 " 行号
	" highlight LineNrAbove  ctermfg=239              " 光标上方的相对行号
	" highlight LineNrBelow  ctermfg=239              " 光标下方的相对行号
	highlight CursorLineNr   ctermfg=30 ctermbg=237 cterm=bold    " 光标行的行号

	" ------------------------------------------------------------------------
	" 目录与快速修复
	" ------------------------------------------------------------------------
	highlight Directory      ctermfg=75                " 目录名
	highlight QuickFixLine   ctermbg=235 cterm=bold    " quickfix 窗口中的当前项

	" ------------------------------------------------------------------------
	" 拼写检查
	" ------------------------------------------------------------------------
	highlight SpellBad       ctermbg=NONE ctermfg=204 cterm=underline " 拼写检查器无法识别的单词
	highlight SpellCap       ctermbg=NONE ctermfg=180 cterm=underline " 应以大写字母开头的单词
	highlight SpellLocal     ctermbg=NONE ctermfg=75  cterm=underline " 在另一区域使用的单词
	highlight SpellRare      ctermbg=NONE ctermfg=176 cterm=underline " 很少使用的单词

	" ------------------------------------------------------------------------
	" 可视模式
	" ------------------------------------------------------------------------
	highlight Visual         ctermfg=NONE ctermbg=238 cterm=NONE   " 可视模式选择
	highlight VisualNOS      ctermfg=NONE ctermbg=238 cterm=NONE   " Not Owning the Selection 时的可视模式

	" ------------------------------------------------------------------------
	" 用户自定义 (User1 - User9)
	" ------------------------------------------------------------------------
	highlight User1          ctermfg=203 ctermbg=NONE   " 用户自定义高亮 1
	highlight User2          ctermfg=40  ctermbg=NONE   " 用户自定义高亮 2
	highlight User3          ctermfg=214 ctermbg=NONE   " 用户自定义高亮 3
	highlight User4          ctermfg=39  ctermbg=NONE   " 用户自定义高亮 4
	highlight User5          ctermfg=141 ctermbg=NONE   " 用户自定义高亮 5
	highlight User6          ctermfg=245 ctermbg=NONE   " 用户自定义高亮 6
	highlight User7          ctermfg=252 ctermbg=NONE   " 用户自定义高亮 7
	highlight User8          ctermfg=203 ctermbg=NONE   " 用户自定义高亮 8
	highlight User9          ctermfg=40  ctermbg=NONE   " 用户自定义高亮 9

	" ------------------------------------------------------------------------
	" GUI 专用组（终端中无效果，仅作占位，不包含 GUI 颜色）
	" Menu, Scrollbar, Tooltip, TitleBar, TitleBarNC
	" 这些组在终端 Vim 中不会生效，因此不设置任何颜色。
	" ------------------------------------------------------------------------
	" 活动 GUI 窗口的标题栏（仅 MS-Windows GUI 支持）
	" 参见 :help gui-w32-title-bar
	" 仅 guibg 和 guifg 有效；此高亮在终端中无效。
	highlight TitleBar       guifg=#abb2bf guibg=#3e4451   " 活动窗口标题栏
	highlight TitleBarNC     guifg=#5c6370 guibg=#2c323c   " 非活动窗口标题栏
	highlight Menu           guifg=#abb2bf guibg=#3e4451   " 菜单/工具栏
	highlight Scrollbar      guifg=#5c6370 guibg=#282c34   " 滚动条
	highlight Tooltip        guifg=#abb2bf guibg=#3e4451   " 工具提示

endfunction

" 启动时立即应用一次
call s:ApplyHighlights()
