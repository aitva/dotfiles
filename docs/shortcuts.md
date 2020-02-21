# Shortcuts

This is a list of useful keyboard shortcuts to work from the command line.

## Tmux

Below is a list of shortcuts for [tmux](https://github.com/tmux/tmux).
The `prefix` is the shortcut `ctrl+b` and a command prompt can be open with `prefix+:`.

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
- swap windows: `prefix+:` and `swap-window -t -1`

Manage plugins:

- install plugins: `prefix+I`
- update plugins: `prefix+U`
- uninstall plugins: `prefix+alt+u`

Scroll mode:

- enter: `prefix+[`
- exit: `q`
- select: `<space>`
- copy: `<enter>`

## Git

Working with branch:

- checkout a remote branch: `git checkout remote-branch`
- checkout a new branch: `git checkout -b new-branch`
- push a new branch to remote: `git push --set-upstream origin new-branch`
- delete a local branch: `git branch -d local-branch`
- delete a remote branch: `git push --delete origin remote-branch`
- fetch deleted branch from origin: `git fetch --prune`

Other:

- see file history of change: `git log -p -- <file>`
- skip CI in Gitlab: `git push -o ci.skip`
- diff between two branch: `git diff branch1 branch2 -- path/to/file`
- checkout file from a branch: `git checkout branch1 path/to/file`
