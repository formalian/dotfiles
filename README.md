# Dotfiles

These are the configuration files for a brand new WSL shell to be used with `oh-my-zsh`.


## Additional programs

The following programs are needed to make the configuration work :
```shell
sudo apt install bat exa fzf
```
- [vim-plug](https://github.com/junegunn/vim-plug)
- [starship](https://starship.rs/)
- [zsh-z]()
- [pyenv](https://github.com/pyenv/pyenv)
- [zsh-autosuggestions]()
- [zsh-syntax-highlighting]()


The following libraries are needed for pyenv to compile a new python version :
```shell
sudo apt install libssl-dev libbz2-dev libreadline-dev libsqlite3-dev libffi-dev liblzma-dev
```

I am also using the following font that works great with `starship` : [Hurmit NFM](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hermit) and the Dracula theme for neovim and vim.