" vim 全局配置文件路径：/etc/vim/vimrc; /etc/vimrc; /usr/share/vim/vimrc；C:\Program Files\Vim\_vimrc
" vim 用户配置文件路径：~/.vimrc; ~/.vim/vimrc; ~/.config/vim/vimrc; C:\Users\username\_vimrc
" more color: https://www.ditig.com/publications/256-colors-cheat-sheet


" ~/.vimrc
let g:config_dir = expand('~/.config/vim/conf')

" 添加到 runtimepath
execute 'set runtimepath^=' . g:config_dir

" 优先加载 plugins.vim
let s:plugins_file = g:config_dir . '/plugins.vim'
if filereadable(s:plugins_file)
  execute 'source' s:plugins_file
endif

" 加载其他基础配置文件（排除已加载的和插件配置目录）
for s:file in sort(split(glob(g:config_dir . '/*.vim'), '\n'))
  if s:file !=# s:plugins_file
    execute 'source' s:file
  endif
endfor

" 最后加载插件配置目录
let s:plug_conf_dir = g:config_dir . '/plug-conf'
if isdirectory(s:plug_conf_dir)
  for s:plugin_file in sort(split(glob(s:plug_conf_dir . '/*.vim'), '\n'))
    execute 'source' s:plugin_file
  endfor
endif

" 清理变量
unlet s:plugins_file
unlet s:file
unlet s:plug_conf_dir
unlet s:plugin_file
