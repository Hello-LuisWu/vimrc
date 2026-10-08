" ===========================
" 未定义映射
" ============================
"
" nnoremap <C-BS>

" 以空格键为先导键
let mapleader = " "
let maplocalleader = " "

" inoremap <C-n> <left>
" inoremap <C-j> <down>
" inoremap <C-k> <up>
" inoremap <C-l> <right>

noremap! jj <C-[>
nnoremap U <C-r>
nnoremap <leader><CR> :set wrap!<CR>
nnoremap <silent> <C-r> :w<CR>:source $MYVIMRC<CR>
" nnoremap <C-r> :w<CR>:source %<CR>
nnoremap <tab> :
nnoremap ; :
nnoremap <S-tab> /

" Visual 粘贴不覆盖寄存器
vnoremap p "_dP
nnoremap <silent> <BS> :set hls!<CR>
nnoremap gF  gg=G
inoremap <C-j> <C-[>o
inoremap <C-k> <C-[>O

" 删除当前行，不影响寄存器
nnoremap <S-BS> "_dd

" Visual 删除，不影响寄存器
vnoremap <S-BS> "_d

" Vim 里用这个（打开新窗口运行 shell）
nnoremap <silent> <C-t> :terminal<CR>

" ========================
" 文件浏览器
" ========================
" nnoremap <leader>e :Explore<CR>
" 垂直
nnoremap <leader>e :Vexplore<CR>
" 水平
" nnoremap <leader>eh :Hexplore<CR>

" 再制
" inoremap <C-d> <C-[>yypA
" nnoremap <C-d> yyp

for mode in ['n', 'x']
	execute mode . 'noremap q: <Nop>'
endfor

for mode in ['n', 'x']
	execute mode . 'noremap W 5w'
	execute mode . 'noremap B 5b'
endfor

for mode in ['n', 'x']
	execute mode . 'noremap H 0'
	" execute mode . 'noremap H g0'
	execute mode . 'noremap L $'
	" execute mode . 'noremap L g$'
	execute mode . 'noremap J G'
	execute mode . 'noremap K gg'
endfor

" inoremap ( ()<C-[>i
" inoremap [ []<C-[>i
" inoremap { {}<C-[>i
" inoremap ' ''<C-[>i
" inoremap " ""<C-[>i
" inoremap < <><C-[>i

" nnoremap <A-j> :move .+1<CR>
" nnoremap <A-k> :move .-2<CR>
" nnoremap <A-j> :m .+1<CR>==
" nnoremap <A-k> :m .-2<CR>==

xnoremap <C-j> :m '>+1<CR>gv=gv
xnoremap <C-k> :m '<-2<CR>gv=gv

for mode in ['n', 'x', 'i']
	execute mode . 'noremap <left> <Nop>'
	execute mode . 'noremap <right> <Nop>'
	execute mode . 'noremap <up> <Nop>'
	execute mode . 'noremap <down> <Nop>'
endfor

" 保持缩进状态
xnoremap < <gv
xnoremap > >gv
xnoremap <S-Tab> <gv
xnoremap <Tab> >gv

" 复制当前文件路径
nnoremap <Leader>dp :let @+=expand('%:p')<CR>
" 复制文件名
nnoremap <Leader>dn :let @+=expand('%:t')<CR>
" 切换当前文件所在目录为工作目录
nnoremap <Leader>dd :cd %:p:h<CR>:pwd<CR>

" 查找高亮下一个
nnoremap * *N

" 搜索后保持居中
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <C-f> <C-f>zz
nnoremap <C-b> <C-b>zz

" ==========================
" tab 配置
" ==========================
nnoremap \ :tabnext<CR>
nnoremap <Bar> :tabprevious<CR>
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>
nnoremap to :tabonly<CR>
nnoremap tt :tabmove +1<CR>
nnoremap TT :tabmove -1<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>


" 数字键直接跳转到第 n 个标签
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

nnoremap <leader>m1 :tabmove 0<CR>
nnoremap <leader>m2 :tabmove 1<CR>
nnoremap <leader>m3 :tabmove 2<CR>
nnoremap <leader>m4 :tabmove 3<CR>
nnoremap <leader>m5 :tabmove 4<CR>
nnoremap <leader>m6 :tabmove 5<CR>
nnoremap <leader>m7 :tabmove 6<CR>
nnoremap <leader>m8 :tabmove 7<CR>
nnoremap <leader>m9 :tabmove 8<CR>

" ======================================
" buffer
" ======================================

" Buffer 切换
"--------------------------
" 下一个 buffer
nnoremap <leader>bn :bnext<CR>
" 上一个 buffer
nnoremap <leader>bp :bprevious<CR>
" 第一个 buffer
nnoremap <leader>bf :bfirst<CR>
" 最后一个 buffer
nnoremap <leader>bl :blast<CR>

" Buffer 删除
"--------------------------
" 删除当前 Buffer
nnoremap <leader>bd :bdelete<CR>
" 完全删除当前 Buffer
nnoremap <leader>bw :bwipeout<CR>

" 强制删除 Buffer
"--------------------------
" 强制删除当前 Buffer
nnoremap <leader>bD :bdelete!<CR>
" 强制完全删除当前 Buffer
nnoremap <leader>bW :bwipeout!<CR>

" ==============================
" 窗口配置
" ==============================
" 调整窗口大小
nnoremap <silent> <S-left> :vertical resize -2<CR>
nnoremap <silent> <S-right> :vertical resize +2<CR>
nnoremap <silent> <S-down> :resize +2<CR>
nnoremap <silent> <S-up> :resize -2<CR>
" 关闭窗口
nnoremap <leader>wc :close<CR>
" 关闭其他窗口
nnoremap <leader>wo :only<CR>
" 垂直分屏
nnoremap <leader>ws :vsplit<CR>
" 水平分屏
nnoremap <leader>wS :split<CR>
" 新建空白窗口
nnoremap <leader>wn <C-w>n
" 窗口等宽
nnoremap <leader>wd <C-w>=
" 窗口移动到最左边
nnoremap <leader>wh <C-w>H
" 窗口移动到最下边
nnoremap <leader>wj <C-w>J
" 窗口移动到最上边
nnoremap <leader>wk <C-w>K
" 窗口移动到最右边
nnoremap <leader>wl <C-w>L
" 光标焦点左移
nnoremap <C-h> <C-w>h
" 光标焦点下移
nnoremap <C-j> <C-w>j
" 光标焦点上移
nnoremap <C-k> <C-w>k
" 光标焦点右移
nnoremap <C-l> <C-w>l

" 显示文件格式、缩进、编码、文件类型
" nnoremap <silent> <Bar> :call ShowFileInfo()<CR>
function! ShowFileInfo() abort
    " 1. 文件格式
    let fileformat = &fileformat

    " 2. 缩进宽度
    let sw = &shiftwidth
    if sw == 0
        let sw = &tabstop
    endif

    " 3. 文件编码
    let encode = &fileencoding
    if encode ==# ''
        let encode = &encoding
    endif

    " 4. 文件类型
    let ft = &filetype

    " 5. 拼接并显示
    echo printf(' %s >%d %s %s', fileformat, sw, encode, ft)
endfunction

" nnoremap ,a mpgUiW"pciW<C-R>=substitute(@p,'-','_','ge')<CR><ESC>`p:delm p<cr>
" inoremap ,a <ESC>mpgUiW"pciW<C-R>=substitute(@p,'-','_','ge')<CR><ESC>`p:delm p<CR>a

" This is maps setup of the Markdown ===
autocmd Filetype markdown inoremap --- <Enter>---<Enter><br/><Enter>
autocmd Filetype markdown inoremap BB **** <++><Esc>F*hi
autocmd Filetype markdown inoremap DD ****** <++><Esc>F*hhi
autocmd Filetype markdown inoremap II ** <++><Esc>F*i
autocmd Filetype markdown inoremap SS ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap UU <u></u> <++><Esc>2F<i
autocmd Filetype markdown inoremap LS <details><Enter><summary></summary><Enter><++><Enter></details><Esc>2k0f>a
autocmd Filetype markdown inoremap ` `` <++><Esc>F`i
autocmd Filetype markdown inoremap ``` `````` <++><Esc>3F`i
autocmd Filetype markdown inoremap <leader>` ```<Enter>```<Enter><++><Esc>2kA
autocmd Filetype markdown inoremap ~~ ~~~<Enter><Enter>~~~<Enter><++><Esc>2kA
autocmd Filetype markdown inoremap @@ ##<Space>
autocmd Filetype markdown inoremap ## ###<Space>
autocmd Filetype markdown inoremap $$ ####<Space>
autocmd Filetype markdown inoremap \\ <C-[>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap PP ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap AA [](<++>) <++><Esc>F[a
