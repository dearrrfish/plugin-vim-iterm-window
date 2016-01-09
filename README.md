# vim-iterm-window

Lazy [fish-shell](https://github.com/fish-shell/fish-shell) script to open a new iTerm window for Vim editor.



## Install

1. Create a new profile named `Vim` and configure your preferred window settings.
2. Source `realpath.fish` and `vimw.fish` in your `config.fish`; or via any plugin manager like [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish) , [fisherman](https://github.com/fisherman/fisherman)



## Usage

``` 
# Specific file
~/codes/plugin> vimw howdy.fish

# Folder
~/codes/plugin> vimw ../

# Existed folder but new file
~/codes/plugin> vimw ~/existed_folder/file_not_exist.txt

# Non-exist folder will throw an error
~/codes/plugin> vimw ~/void_face/blahblah.txt
error: target folder doesn't exist. - `/Users/me/void_face/blahblah.txt`
```

