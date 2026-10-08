let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

" ========== 3. which-key 弹窗样式配置 ==========
let g:which_key_vertical = 0       " 0横向排列，1纵向排列
let g:which_key_position = 'botright' " 弹窗右下角弹出
let g:which_key_hspace = 2         " 列与列横向间距
let g:which_key_centered = 1       " 文字居中对齐
let g:which_key_ignore_outside_mappings = 0 " 0=显示所有未配置的快捷键；1=只显示字典里写过的

" 打开which-key临时隐藏状态栏，关闭自动恢复
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=1 showmode ruler

let g:which_key_map =  {}
let g:which_key_map.f = { 'name' : 'File Find' }
let g:which_key_map.w = { 'name' : '窗口管理' }


call which_key#register('<Space>', "g:which_key_map")
