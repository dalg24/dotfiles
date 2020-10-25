### .vimrc

1. Create a symbolic link for vim runtime configuration file that points with `.vimrc` as destination: 

    `$ ln -s dotfiles/.vimrc ~/.vimrc`

2. Set up [Vundle](https://github.com/VundleVim/Vundle.vim):

    `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

3. Launch `vim` and run `:PluginInstall`

### .gitconfig

```
$ curl https://raw.githubusercontent.com/git/git/master/contrib/diff-highlight/diff-highlight > diff-highlight && chmod +x diff-highlight
```
