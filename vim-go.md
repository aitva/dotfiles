# vim-go Shortcuts

This files contains usefull shortucts from the vim-go [tutorial](https://github.com/fatih/vim-go-tutorial).
To install or update binaries: `:GoInstallBinaries` or `:GoUpdateBinaries`

Here is a list of shortcuts:
- build: `<super>-b`
- run: `<super>-r`
- next error: `ctrl-n`
- previous error: `ctrl-m`
- close error: `<super>-a`
- go to definition: `ctrl-]`
- return from definition: `ctrl-t` (`ctrl-o` for all jumps)
- find callers: `:GoCallers`
- find callees: `:GoCallees`

Navigate location list:
- next: `:lne`
- prev: `:lN`
- help: `:h location-list`

Navigate Quickfix:
- next: `:cn`
- prev: `:cp`
- close: `:ccl``

Autocomplete:
- hit `<C-X><C-O>` while typing
- close preview-window hit `<C-W> z` while typing (`<C-W><C-Z>` in normal mode)

Navigate declarations:
- type `:GoDecls` or `:GoDeclsDir` for a list of function & type
- for next function hit `]]` in normal mode
- for previous function hit `[[` in normal mode

Navigate folders:
- change dir with `:cd`
- open explorer `:Ex`
- open explorer in a tab `:Tex`
- from the explorer:
    - open a file in a tab `t`
    - change view `i`
    - sort file `s`
