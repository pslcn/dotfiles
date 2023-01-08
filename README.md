Includes settings for zsh, tmux, and vim. Scripts are in `~/.local/bin/`.

## Installation

```bash
git clone --bare https://github.com/pslcn/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```
