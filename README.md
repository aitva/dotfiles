# dotfiles

This repo contains my dotfiles. I use it to share configs between my computers.
I have created the repo using the advice at: https://news.ycombinator.com/item?id=11071754
But later updated to a simpler workflow presented by Drew DeVault on his blog:
https://drewdevault.com/2019/12/30/dotfiles.html

## Initialization

Create a new repository:

```bash
git init
git remote add origin git@github.com:aitva/dotfiles.git
git fetch
git checkout -f master
```

Add this incredible `.gitignore` file:
```
*
```

To add any new file you need to use `git add -f FILE` forcing git to override
the `.gitignore`.

## Replicate onto a new machine

```bash
git init
git remote add origin git@github.com:aitva/dotfiles.git
git fetch
git checkout -f master
```

## Other

To import file from `.bashrc.d` edit `.bashrc` and add:

```bash
. ~/.bashrc.d/default
. ~/.bashrc.d/go
```
