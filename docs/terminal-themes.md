# Terminal Themes

This is a memo on how to change the default theme in Gnome Terminal.

## Installing new themes

Install [Gosh](https://github.com/Mayccoll/Gogh/) from Mayccoll and pick a theme.
The ones I enjoy the most to work with VIM and Termux are : dark-pastel and elemental.

## Removing themes

Removing themes from Gnome Terminal is not easy. You need to go through `gconf`:

- list the config with `$ dconf dump /org/gnome/terminal/ | less`
- delete one config with `$ dconf reset -f /org/gnome/terminal/legacy/profiles:/PROFILE_ID"`
- delete all the configs with `$ dconf reset -f /org/gnome/terminal/`
