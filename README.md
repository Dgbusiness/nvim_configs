# nvim_configs

- Merge `.config` content to `.config` in the personal folder.
- Run `ln -s .vimrc ./config/.vimrc`
- Run `sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'` to install Vim Plug.
- Run nvim and install the plugins
