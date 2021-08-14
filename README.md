# General config files

I don't see the point of hidding configuration files. That is probabily something
dating back to the old days. I don't keep ".dotfiles", I prefer to keep config files.

## Key bindings

So, you are working in the terminal. You are like me trying to
reach the "productive mouse free" development.

A possible setup is like this: you are in tmux session, with some panes and windows,
a remote ssh server, etc. You are running vim (or neovim), file managers
(vifm, ranger, mc, nnn), perhaps a music player (moc, ncspot, ncmpcpp), etc.

In the scenario we have at least 4 levels (or layers if you will):

    - 1) the desktop environment (LXDE, MATE, GNOME, KDE, Cinnamon, i3...);
         I don't know anybody who works on tty.
    - 2) the terminal emulator (too many to list -- I enjoy using kitty);
    - 3) tmux;
    - 4) the program you are running.

Any key combination you press may be catched by all those, or none, or even another app.
To get my setup configuration took me years. Yeah, I know. Too much.
But I am not a computer scientist, so things go slow.

Premisses:

  - Single keys (like F-keys) or dual combinations (alt + <key> or ctrl + <key>) reserved
    for level 4;
  - all TMUX shortcuts are triple combinations: ctrl B + <key> (note that ctrl + B are
    pressed together, released, then you press the next key)
  - terminal emulator uses triple combinations:
    - copy ctrl + shift + c
    - paste ctrl + shift + v
    - fullscreen ctrl + shift + f11
    - ctrl + shift + F_keys
    - navigate => goes to tmux
    - ...
  - desktop environment: I see only a few uses for shortcuts here:
    - launch a new terminal (alt + F2)
    - F1 for help because it is default everywhere
    - ctrl + shift + L => lock screen
    - ctrl + shift + delete => shutdown/restart
    - alt + tab => move between windows
    - ctrl + shift + alt + left => move to workspace
    - ctrl + shift + alt + right => move to workspace
    - but remember: if you're working in the terminal, desktop apps shouldnt be a concern

After a lot of time spent (and lost) in VIM, I decided to remap most frequent commands
to well-known key combinations:

    - CTRL+s for save
    - CTRL+p for (fuzzy) search (with fzf.vim)
    - CTRL+c for copy
    - CTRL+x for cut
    - CTRL+v for paste    
    - CTRL+o for open
    - CTRL+w for close buffer
    - CTRL+z for undo
    - CTRL+y for redo
    - CTRL+f for find
    - CTRL+h for find and replace

That's it. I keep learning and trying to optmize my processes.
