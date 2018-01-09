# dotfiles

This repo contains my dotfiles. I use it to share my config with all my computers.
I have created the repo using the advice at: https://news.ycombinator.com/item?id=11071754

## Initialization

The following command are use to create a new repo:

```bash
git init --bare $HOME/.myconf
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
config config status.showUntrackedFiles no
```

Then you can use git as:

```bash
config status
config add .vimrc
config commit -m "Add vimrc"
config add .config/redshift.conf
config commit -m "Add redshift config"
config push
```

## Replicate onto a new machine

Cloning into a separate folder:

```bash
git clone --separate-git-dir=$HOME/.myconf git@github.com:aitva/dotfiles.git $HOME/myconf-tmp
cp -ri $HOME/myconf-tmp/. $HOME
rm -rf $HOME/myconf-tmp
config config status.showUntrackedFiles no
```

## Other

Importing a file from `.bashrc.d`:

```bash
echo ". .bashrc.d/termux" >> .bashrc
```

Install `vim-go`:

```bash
git clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go
```

Install `dep`:

```bash
go get -u github.com/golang/dep/cmd/dep
```
