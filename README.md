# .dotfiles
It is what it is. 

![The Terminal](https://github.com/JosiahABrown/dotfiles/blob/master/Screenshot_20220930_111755.png)

## Installation 
1. Install `git`
2. Clone repo into a new directory 
```
# With SSH if setup
git clone git@github.com:JosiahABrown/dotfiles.git ~/.dotfiles

# or HTTPS and switch remotes later
git clone https://github.com/JosiahABrown/dotfiles.git ~/.dotfiles
```
3. Create symnlinks in the home directory or anywhere that you need
```
# The best way to do this is with a setup.sh

ln -s real/file/path sym/link/path

ln -s ~/.dotfile/.zshrc ~/.zshrc
ln -s ~/.dotfile
```

## TODO list
- Organize steps into setup.sh
- Read [tutorials](https://dotfiles.github.io/tutorials/) on [securing dotfile](https://www.abdullah.today/encrypted-dotfiles/)
- Add auto complete plugin to nvim
    - Python
	- Js 
	- Bash
