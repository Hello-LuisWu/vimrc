



























" ======================================
" Vim Start Page (Alpha like)
" ======================================


if exists("g:loaded_startpage")
    finish
endif

let g:loaded_startpage = 1


" -------------------------------
" 创建启动页
" -------------------------------

function! StartPage()
    enew

    setlocal buftype=nofile
    setlocal bufhidden=wipe
    setlocal noswapfile
    setlocal nobuflisted
    setlocal modifiable


    silent! %delete _


    call append(0, [
        \ '',
        \ '          ███╗   ██╗██╗   ██╗██╗███╗   ███╗',
        \ '          ████╗  ██║██║   ██║██║████╗ ████║',
        \ '          ██╔██╗ ██║██║   ██║██║██╔████╔██║',
        \ '          ██║╚██╗██║╚██████╔╝██║██║╚██╔╝██║',
        \ '          ██║ ╚████║ ╚═════╝ ╚═╝╚═╝ ╚═╝ ╚═╝',
        \ '',
        \ '',
        \ '                 [f] Find Files',
        \ '                 [o] Old Files',
        \ '                 [r] Ripgrep',
        \ '                 [g] Git Files',
        \ '                 [b] Buffers',
        \ '                 [e] New File',
        \ '                 [q] Quit Vim',
        \ '',
        \ ''
        \ ])


    setlocal nomodifiable


    " 只能移动菜单行
    call StartPageCursor()


    " 键盘绑定
    nnoremap <silent><buffer> f :call StartAction('f')<CR>
    nnoremap <silent><buffer> o :call StartAction('o')<CR>
    nnoremap <silent><buffer> r :call StartAction('r')<CR>
    nnoremap <silent><buffer> g :call StartAction('g')<CR>
    nnoremap <silent><buffer> b :call StartAction('b')<CR>
    nnoremap <silent><buffer> e :call StartAction('e')<CR>
	nnoremap <silent><buffer> q :call StartAction('q')<CR>

    nnoremap <silent><buffer><CR> :call StartActionCurrent()<CR>


    " ESC 保持启动页
    nnoremap <silent><buffer><Esc> :call StartPage()<CR>


endfunction



" -------------------------------
" 光标限制
" -------------------------------

function! StartPageCursor()

    let s:menu_lines = [
        \ 9,
        \ 10,
        \ 11,
        \ 12,
        \ 13,
        \ 14,
		\ 15
        \ ]

    call cursor(9,18)


    nnoremap <silent><buffer> j :call StartMove(1)<CR>
    nnoremap <silent><buffer> k :call StartMove(-1)<CR>

endfunction



function! StartMove(dir)

    let l = line('.') + a:dir


    if index(s:menu_lines,l) >= 0
        call cursor(l,18)
    endif

endfunction



" -------------------------------
" 当前行执行
" -------------------------------

function! StartActionCurrent()

    let c = getline('.')

    if c =~ '\[f\]'
        call StartAction('f')

    elseif c =~ '\[o\]'
        call StartAction('o')

    elseif c =~ '\[r\]'
        call StartAction('r')

    elseif c =~ '\[g\]'
        call StartAction('g')

    elseif c =~ '\[b\]'
        call StartAction('b')

    elseif c =~ '\[e\]'
        call StartAction('e')

	elseif c =~ '\[q\]'
		call StartAction('q')
    endif

endfunction



" -------------------------------
" fzf 调用
" -------------------------------


function! StartAction(key)

    " 保存启动页
    let l:key=a:key


    if a:key ==# 'f'

        call StartFzf('Files')

    elseif a:key ==# 'o'

        call StartFzf('History')

    elseif a:key ==# 'r'

        call StartFzf('Rg')

    elseif a:key ==# 'g'

        call StartFzf('GFiles')

    elseif a:key ==# 'b'

        call StartFzf('Buffers')


    elseif a:key ==# 'e'

        call StartNewFile()

	elseif a:key ==# 'q'

		qall

    endif

endfunction



function! StartFzf(cmd)

    execute 'silent keepjumps ' . a:cmd

    autocmd BufLeave <buffer> ++once call StartPage()

endfunction



" -------------------------------
" 新建文件
" -------------------------------

function! StartNewFile()

    let file = input("New File: ")

    if file !=# ''

        execute "edit " . fnameescape(file)

    else

        call StartPage()

    endif

endfunction



" -------------------------------
" 自动启动
" -------------------------------


augroup StartPageAuto
    autocmd!

    autocmd VimEnter *
        \ if argc()==0 |
        \ call StartPage() |
        \ endif

augroup END
