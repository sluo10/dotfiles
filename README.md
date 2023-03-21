# dotfiles

Personal dotfiles

## Setup

1. Install [oh-my-zsh](https://ohmyz.sh/#install)

```sh
# check the site to verify that this is the proper installation command
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

2. Clone this repo

```sh
git clone https://github.com/sluo10/dotfiles.git
```

3. Create a `~/.zshrc` file with the following content (customize based on PC configuration)

```sh
export DOTFILES="$HOME/src/dotfiles"  # set location of dotfiles repo

source $HOME/src/dotfiles/.zshrc      # load dotfiles
```

4. Run `source ~/.zshrc` to verify it was set up correctly
