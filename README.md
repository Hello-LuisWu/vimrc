# vim-conf

## install vim-plug

```sh
# Linux/macOS
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.giteeusercontent.com/hello-luiswu/vim-plug/raw/master/plug.vim

# Windows
iwr -useb https://raw.giteeusercontent.com/hello-luiswu/vim-plug/raw/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
```

## clone vim file

```sh
# Linux/macOS
git clone --depth 1 https://github.com/Hello-LuisWu/vimrc.git ~/.config/vim

# Windows
git clone --depth 1 https://github.com/Hello-LuisWu/vimrc.git "$env:USERPROFILE\.vim"
```

## install vim plug

```
vim +PlugInstall
```

## Use the plugin free version

After cloning the files, if you need to use the vim configuration without plugins, please execute the following command:

```
mv ~/.config/vim/vimrc{,.bak} && mv ~/.config/vim/vim-noplug.vim ~/.config/vim/vimrc
```

## File tree

```
.
├── autoload
│   └── plug.vim
├── config
│   ├── autocmd.vim
│   ├── highlight.vim
│   ├── maps.vim
│   ├── option.vim
│   ├── plugin-config
│   │   ├── accelerated-jk.vim
│   │   ├── bullets.vim
│   │   ├── coc.vim
│   │   ├── commentstring.vim
│   │   ├── fzf.vim
│   │   ├── lightline.vim
│   │   ├── motion.vim
│   │   ├── nerdtree.vim
│   │   ├── plug-config.vim
│   │   ├── tagbar.vim
│   │   └── which-key.vim
│   ├── plugins.vim
│   ├── start.vim
│   └── statusline.vim
├── README.md
├── vim-noplug.vim
└── vimrc
```
