configs
=======

Linux home configuration files and scripts

## Checklist

### Configure terminal
- Install [NerdFont Sauce Code Pro Medium Mono](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SourceCodePro)
- Set gnome-terminal settings to Sauce Code Pro Medium (size 10), Colour "Grey on Black", Palette "Tango".

### Set up git (Optional)
- **Run** `ln -sfv [dotfiles]/git/gitignore ~/.gitignore`
- **Run** `ln -sfv [dotfiles]/git/gitconfig ~/.gitconfig`

### Set up shell
- Install zsh + oh-my-zsh
- **Run** `ln -sfv [dotfiles]/shell/zshrc ~/.zshrc` (Restart terminal)

### Set up tmux
- Install tmux
- Install [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
- **Run** `ln -sfv [dotfiles]/terminal/tmux.conf ~/.tmux.conf`
- Restart tmux and run `<prefix> + I` to install new plugins.

### Set up vim
- Install [Neovim with python3 support](https://github.com/neovim/neovim/wiki/Installing-Neovim#ubuntu)
- Install ripgrep `sudo apt install ripgrep`
- Install [vim-plug](https://github.com/junegunn/vim-plug#neovim)
- **Run** `ln -sfv [dotfiles]/vim/vimrc ~/.config/nvim/init.vim`
- Start `nvim` and run `:PluginInstall`

### Configure coc.nvim
- **Run** `ln -sfv [dotfiles]/vim/coc-settings.json ~/.config/nvim/coc-settings.json`
- Run `nvim` and run `:CocInstall coc-json`
- Run `:CocInstall coc-pyright`
- Run `:CocInstall coc-tsserver`
- Run `:CocInstall coc-rust-analyzer`
- Run `:CocInstall coc-diagnostic`
- Run `:CocInstall coc-prettier`

### Set up python support in venv
- In your virtual environment, [follow instructions here](https://neovim.io/doc/user/provider.html#provider-python).
- Run `pip install pynvim`.

### Set up fzf in vim
- Install `bat` - `sudo apt install bat`
- If installation fails due to some crate.json error try `sudo apt install -o Dpkg::Options::="--force-overwrite" bat`
- Create a symlink to rename `batcat` to `bat` - `sudo ln -s /usr/bin/batcat /usr/local/bin/bat`
