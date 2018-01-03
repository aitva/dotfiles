# dotfiles
My dotfiles.

Cloning into a non empty folder:

```bash
git init
git remote add origin https://github.com/aitva/dotfiles.git
git fetch
git checkout -t origin/master # if this fail add -f
```

Adding a file from `.bashrc.d` to your shell:

```bash
echo ". .bashrc.d/termux" >> .bashrc
```
