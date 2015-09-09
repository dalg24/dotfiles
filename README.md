# dotfiles

### dotvimrc

1. Create a symbolic link for vim runtime configuration file that points with dotvimrc as destination: 

    `$ ln -s dotfiles/dotvimrc ~/.vimrc`

2. Set up [Vundle](https://github.com/VundleVim/Vundle.vim):

    `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

3. Launch `vim` and run `:PluginInstall`
