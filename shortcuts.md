# Shortcuts

This is a list of useful keyboard shortcuts to work from the command line.

## Vim Go

Below is a list of shortucts from the vim-go [tutorial](https://github.com/fatih/vim-go-tutorial).
To install or update binaries: `:GoInstallBinaries` or `:GoUpdateBinaries`

General shortcuts:

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
- close: `:lcl`
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

## Tmux

Below is a list of shortcuts for [tmux](https://github.com/tmux/tmux).
The `prefix` is the shortcut `ctrl+a` and a command prompt can be open with `prefix+:`.

Manage sessions:

- create a new session: `tmux new -s my-session` or `:new -s my-session`
- rename a session: `prefix+$`
- detach from a session: `prefix+d`
- list the session: `tmux ls` or `prefix+s`
- attach to a session: `tmux a` or `tmux a -t my-session`
- kill session: `tmux kill-sess -a` or `tmux kill-sess -t my-session`

Manage windows:

- create a window: `prefix+c`
- rename a window: `prefix+,`
- close current window: `prefix+&`
- previous & next window: `prefix+p` and `prefix+n`

Manage plugins:

- install plugins: `prefix+I`
- update plugins: `prefix+U`
- uninstall plugins: `prefix+alt+u`

Manage environment:

- reload config: `:source-file ~/.tmux.conf` or `tmux source-file ~/.tmux.conf` or `prefix+r`
- save environment: `prefix+ctrl+s`
- restore environment: `prefix+ctrl+r`

Scroll: `prefix+[` and `q` to exit scroll mode
