configs
=======

Linux home configuration files and scripts

## Checklist

### Set up virtualenv
- Install virtualenv + virtualenvwrapper

### Set up shell
- Install zsh + oh-my-zsh
- Install Powerline fonts - https://github.com/powerline/fonts
- **Run** `ln -sfv [dotfiles]/shell/zshrc ~/.zshrc` (Restart terminal)

### Set up terminal
- Install terminator
- Install Source Code Pro Medium for Powerline font (https://github.com/powerline/fonts/tree/master/SourceCodePro)
- **Run** `ln -sfv [dotfiles]/terminal/terminator_config ~/.config/terminator/config`

### Set up git
- **Run** `ln -sfv [dotfiles]/git/gitignore ~/.gitignore`
- **Run** `ln -sfv [dotfiles]/git/gitconfig ~/.gitconfig`

### Set up vim
- Install vim with +python & +python3 support (https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source + https://gist.github.com/erickpatrick/5e0923d3645eaf4056b6b9fee4c91e2f)
- Install monokai vim theme (https://github.com/crusoexia/vim-monokai)
    - Change the `MatchParen` line to `call s:h("MatchParen", { "format": "underline" })`
- Install Vundle (https://github.com/VundleVim/Vundle.vim#quick-start)
- Install ag: `sudo apt-get install silversearcher-ag` (https://github.com/ggreer/the_silver_searcher)
- **Run** `ln -sfv [dotfiles]/vim/vimrc ~/.vimrc`
- Start `vim` (ignore errors) and run `:PluginInstall`
- Compile YCM in vim (https://valloric.github.io/YouCompleteMe/#ubuntu-linux-x64)
