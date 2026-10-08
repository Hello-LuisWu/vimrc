" 显示状态行:
" 0	从不显示状态栏
" 1	只有多个窗口时显示
" 2	始终显示一个状态栏
" 3	使用全局状态栏
set laststatus=2

let g:currentmode={
	\ 'n'  : 'Nor',
	\ 'v'  : 'Vis',
	\ 'V'  : 'V-L',
	\ "\<C-V>" : 'V-b',
	\ 'i'  : 'Ins',
	\ 'R'  : 'Rep',
	\ 'Rv' : 'V·R',
	\ 'c'  : 'Com',
\}

let g:status_gui_colors = {
	\ 'a_fg':             '#d8d8d8',
	\ 'a_bg':             '#1c1c1c',
	\
	\ 'b_fg':             '#c6c6c6',
	\ 'b_bg':             '#303030',
	\
	\ 'c_fg':             '#d0d0d0',
	\ 'c_bg':             '#3a3a3a',
	\
	\ 'x_fg':             '#d0d0d0',
	\ 'x_bg':             '#4a4a4a',
	\
	\ 'y_fg':             '#303030',
	\ 'y_bg':             '#bcbcbc',
	\
	\ 'z_fg':             '#1c1c1c',
	\ 'z_bg':             '#d0d0d0',
\ }

let g:status_cterm_colors = {
	\ 'a_fg':             255,
	\ 'a_bg':             233,
	\
	\ 'b_fg':             250,
	\ 'b_bg':             235,
	\
	\ 'c_fg':             252,
	\ 'c_bg':             238,
	\
	\ 'x_fg':             252,
	\ 'x_bg':             238,
	\
	\ 'y_fg':             234,
	\ 'y_bg':             248,
	\
	\ 'z_fg':             235,
	\ 'z_bg':             253,
	\ }

let g:status_gui_nc_colors = {
	\ 'c_fg': '#888888',
	\ 'c_bg': '#202020',
\ }

let g:status_cterm_nc_colors = {
	\ 'c_fg': 245,
	\ 'c_bg': 234,
\ }

let g:status_cterm_style = {
	\ 'bold':        'bold',
	\ 'underline':   'underline',
	\ 'both':   'underline,bold',
\}

" ===========================
" status area color
" ===========================
execute 'highlight s_a'
	\ . ' ctermfg=' . g:status_cterm_colors.a_fg
	\ . ' ctermbg=' . g:status_cterm_colors.a_bg

execute 'highlight s_b'
	\ . ' ctermfg=' . g:status_cterm_colors.b_fg
	\ . ' ctermbg=' . g:status_cterm_colors.b_bg

execute 'highlight s_c'
	\ . ' ctermfg=' . g:status_cterm_colors.c_fg
	\ . ' ctermbg=' . g:status_cterm_colors.c_bg

execute 'highlight s_x'
	\ . ' ctermfg=' . g:status_cterm_colors.x_fg
	\ . ' ctermbg=' . g:status_cterm_colors.x_bg

execute 'highlight s_y'
	\ . ' ctermfg=' . g:status_cterm_colors.y_fg
	\ . ' ctermbg=' . g:status_cterm_colors.y_bg

execute 'highlight s_z'
	\ . ' ctermfg=' . g:status_cterm_colors.z_fg
	\ . ' ctermbg=' . g:status_cterm_colors.z_bg
	\ . ' cterm=' . g:status_cterm_style.bold . "," . g:status_cterm_style.underline

" ===========================
" Split icon color
" ===========================
execute 'highlight s_a_icon'
	\ . ' ctermfg=' . g:status_cterm_colors.a_bg
	\ . ' ctermbg=' . g:status_cterm_colors.b_bg

execute 'highlight s_b_icon'
	\ . ' ctermfg=' . g:status_cterm_colors.b_bg
	\ . ' ctermbg=' . g:status_cterm_colors.c_bg

" --------------------------------

execute 'highlight s_x_icon'
	\ . ' ctermfg=' . g:status_cterm_colors.x_bg
	\ . ' ctermbg=' . g:status_cterm_colors.c_bg

execute 'highlight s_y_icon'
	\ . ' ctermfg=' . g:status_cterm_colors.y_bg
	\ . ' ctermbg=' . g:status_cterm_colors.x_bg

execute 'highlight s_z_icon'
	\ . ' ctermfg=' . g:status_cterm_colors.z_bg
	\ . ' ctermbg=' . g:status_cterm_colors.y_bg

" 检查插件函数是否存在，并处理空分支名
function! GitBranchStatus() abort
if exists('*gitbranch#name')  " 确保插件已加载
	let l:branch = gitbranch#name()
	if !empty(l:branch)         " 确保分支名非空
	return ' ' . l:branch
	endif
endif
return ''  " 所有异常情况返回空字符串
endfunction

let g:statuslineIcon = {
	\ 'LeftIcon':    '',
	\
	\ 'RightIcon':   '',
\}


" function! s:SetupStatusline() abort


function! s:SetupStatusline(active) abort
	setlocal statusline=

	" ==========================================
	" 聚焦窗口
	" ==========================================
	if a:active

		setlocal statusline+=%#s_a#\ %{get(g:currentmode,mode(),'???')}
		setlocal statusline+=%#s_a_icon#%{g:statuslineIcon.LeftIcon}

		setlocal statusline+=%#s_b#\ %{gitbranch#name()}\ " a
		setlocal statusline+=%#s_b_icon#%{g:statuslineIcon.LeftIcon}

		setlocal statusline+=%#s_c#\ %t
		setlocal statusline+=\ %{&readonly?'[x]':''}
		setlocal statusline+=\ %m
		setlocal statusline+=%=
		" setlocal statusline+=%#s_x_icon#%{g:statuslineIcon.RightIcon}
		" setlocal statusline+=%#s_x#\ %l/%L\ %p%%\ ""

		setlocal statusline+=%#s_y_icon#\ %{g:statuslineIcon.RightIcon}
		setlocal statusline+=%#s_y#\ %{&fileencoding}
		setlocal statusline+=\ %{&fileformat}
		setlocal statusline+=\ %{&filetype}\ ""

		setlocal statusline+=%#s_z_icon#%{g:statuslineIcon.RightIcon}
		setlocal statusline+=%#s_z#\ LOVE\ DJL\ "
	" ==========================================
	" 非聚焦窗口
	" ==========================================
	else

		setlocal statusline=%#s_nc#\ %t

	endif
endfunction

augroup CustomStatusline
	autocmd!
	autocmd VimEnter * call <SID>SetupStatusline(1)
	autocmd WinEnter * call <SID>SetupStatusline(1)
	autocmd WinLeave * call <SID>SetupStatusline(0)
augroup END
