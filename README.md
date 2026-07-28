# vim-conf

## clone vim file

## install vim-plug

```sh
# Linux/macOS
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.giteeusercontent.com/hello-luiswu/vim-plug/raw/master/plug.vim
# Windows
iwr -useb https://raw.giteeusercontent.com/hello-luiswu/vim-plug/raw/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
```

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
