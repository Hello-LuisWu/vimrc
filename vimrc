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





" plugins.vim 文件最好优先加载。这配置才能读取主题等插件文件
" let g:config_dir = expand('~/.config/vim/conf')
" execute 'set runtimepath^=' . g:config_dir
" let s:plugins_file = g:config_dir . '/plugins.vim'
" if filereadable(s:plugins_file)
"   execute 'source' s:plugins_file
" endif
" for s:file in sort(split(glob(g:config_dir . '/*.vim'), '\n'))
"   if s:file !=# s:plugins_file
"     execute 'source' s:file
"   endif
" endfor
" unlet s:plugins_file
