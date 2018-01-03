# dotfiles
My dotfiles.

Cloning into a non empty folder:

```bash
git init
git remote add origin git@github.com:aitva/dotfiles.git
git fetch
git checkout -t origin/master # if this fail add -f
```

Adding a file from `.bashrc.d` to your shell:

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
