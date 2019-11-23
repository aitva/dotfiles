# Vim

Below is a list of shortucts from the vim-go [tutorial](https://github.com/fatih/vim-go-tutorial).
To install or update binaries: `:GoInstallBinaries` or `:GoUpdateBinaries`

## General shortcuts:

- build: `<super>-b`
- run: `<super>-r`
- next error: `ctrl-n`
- previous error: `ctrl-m`
- close error: `<super>-a`
- go to definition: `ctrl-]`
- open definition in another tab: `ctrl-w ctrl-] ctrl-w shift-t`
- return from definition: `ctrl-t` (`ctrl-o` for all jumps)
- find callers: `:GoCallers`
- find callees: `:GoCallees`

## Navigate location list:

- next: `:lne`
- prev: `:lN`
- close: `:lcl`
- help: `:h location-list`

## Navigate Quickfix:

- next: `:cn`
- prev: `:cp`
- close: `:ccl`
- back to code: `ctrl-O`

## Autocomplete:

- hit `<C-X><C-O>` while typing
- close preview-window hit `<C-W> z` while typing (`<C-W><C-Z>` in normal mode)

## Navigate declarations:

- type `:GoDecls` or `:GoDeclsDir` for a list of function & type
- for next function hit `]]` in normal mode
- for previous function hit `[[` in normal mode

## Navigate folders:

- change dir with `:cd`
- open explorer `:Ex`
- open explorer in a tab `:Tex`
- from the explorer:
    - open a file in a tab `t`
    - change view `i`
    - sort file `s`

## Change the text case:

- to lowercase `gu`
- to uppercase `gU`
- to toggle the case `g~`

## Search and replace:

- select inside a function: `vif`

## Work with mark:

- add a mark: `m[a-zA-Z]`
- go to the line of a mark: `'[a-zA-Z]`
- go to exact position of a mark: `` `[a-zA-Z] ``

## Emmet:

- execute instruction: `<c-y>,`
- create a list: `ul>li*5`
