# General config files

I don't see the point of hidding configuration files. That is probabily something
dating back to the old days. I don't keep ".dotfiles", I prefer to keep config files.

# Key bindings

So, you are working in the terminal. You are like me trying to
reach the "productive mouse free" development.

A possible setup is like this: you are in tmux session, with some panes and windows,
a remote ssh server, etc. You are running vim (or neovim), file managers
(vifm, ranger, mc, nnn), perhaps a music player (moc, ncspot, ncmpcpp), etc.

In the scenario with have at least 4 levels (or layers if you will):

    - 1) the desktop environment (LXDE, MATE, GNOME, KDE, Cinnamon, i3...);
    - 2) the terminal emulator (too many to list);
    - 3) tmux;
    - 4) the program you are running.

Any key combination you press may be catched by all those, or none, or even another app.
To get my setup configuration took me years. Yeah, I know. Too much.
But I am not a computer scientist, so things go slow.

Premisses:

    - Keep F-keys to your running programs (level 4)
    - Keep triple combinations (Ctrl + Shift + <something>) to terminal emulator (level 3)
    - Set prefix combinations to TMUX (Ctrl-B) (level 2)
    - Ctrl + <key> for running programs.

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
