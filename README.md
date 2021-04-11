# Dotfiles

## i3
1. Refresh servers before getting started
```bash
sudo pacman -Syy
```
2. Install i3
```bash
sudo pacman -S i3-gaps i3blocks i3lock i3status
```
3. Install required packages
```bash
sudo pacman -S xorg xorg-xinit dmenu
```
4. Reboot your machine or run ```startx``` command in your terminal to change window manager

[More useful information about i3](https://i3wm.org/docs/userguide.html)

## polybar
1. Install polybar
```bash
sudo pacman -S polybar
```
2. Default polybar config
```bash
sudo cp /usr/share/doc/polybar/config ~/.config/polybar/config
sudo chown username:username .config/polybar/config
```
3. Change the access permission for launch.sh
```bash
chmod +x ~/.config/polybar/launch.sh
```
4. Check if you've added this to your i3 config file
```bash
exec_always --no-startup-id $HOME/.config/polybar/launch.sh
```
5. Disable i3's default bar by commenting these
```
bar {
    i3bar_command i3bar
}
```
6. To add custom fonts to your polybar:
* Place a folder with .otf-s and/or .ttf-s in ```/usr/share/fonts/``` directory
* Then place a string like this to your polybar config
```bash
font-1 = FontAwesome5Free:style=Solid:pixelsize=11:antialias=true;1
```
[More useful information about polybar](https://github.com/polybar/polybar/wiki)

## ranger
1. Install ranger
```bash
sudo pacman -S ranger
```
2. Default ranger config
```bash
ranger --copy-config=all
```
```ranger``` uses 4 main configuration files:
* ```commands.py``` contains various functions' implementation, written in Python, used to modify ranger's behavior
* ```rc.conf``` is used for setting various options and binding the keys to functions
* ```rifle.conf``` decides which program to use for opening which file
* ```scope.sh``` is a shell script used to generate the previews for various file types\
[More useful information about ranger](https://wiki.archlinux.org/index.php/ranger)\
[Official User Guide](https://github.com/ranger/ranger/wiki/Official-user-guide)

## alacritty
1. Install alacritty
```bash
sudo pacman -S alacritty
```
2. Default alacritty config
```bash
sudo cp /usr/share/doc/alacritty/example/alacritty.yml ~/.config/alacritty/alacritty.yml
sudo chown username:username .config/alacritty/alacritty.yml
```

[More useful information about alacritty](https://wiki.archlinux.org/index.php/Alacritty)

## redshift
1. Install redshift
```bash
sudo pacman -S redshift
```
2. Create a redshift.conf file in ```/.config/redshift/``` directory

3. Paste there a [default configuration](https://raw.githubusercontent.com/jonls/redshift/master/redshift.conf.sample) and set it manually

4. Add this to your .xprofile
```bash
redshift &
```

[More useful information about redshift](https://wiki.archlinux.org/index.php/redshift)

## dunst
1. Install dunst
```bash
sudo pacman -S dunst
```
2. Default dunst config
```bash
sudo cp /usr/share/dunst/dunstrc ~/.config/dunst/dunstrc
sudo chown username:username .config/dunst/dunstrc
```
3. Add this to your .xprofile
```bash 
dunst &
```

[More useful information about dunst](https://wiki.archlinux.org/index.php/Dunst)

### i3-battery-popup
1. Clone i3-battery-popup package
```bash
git clone https://aur.archlinux.org/i3-battery-popup-git.git
```
2. Change your current working directory to ```i3-battery-popup-git```
3. Run this command
```bash
makepkg -si
```
4. Add this to your .xinitrc file to get battery popups
```bash
exec --no-startup-id i3-battery-popup -n -L 20 -l 15 -t 60s
```

[More useful information about i3-battery-popup](https://github.com/rjekker/i3-battery-popup)

# Dotfiles

## .Xresources
**Usage:** ```.Xresources``` can be used to set configuration parameters for X client applications.

1. Add a file named ```.Xresources``` to your **$HOME** directory

2. Make sure that you have this line in your .xinitrc file
```bash
userresources=$HOME/.Xresources
```

[More useful information about .Xresources](https://wiki.debian.org/Xresources)

## .xprofile
**Usage:** ```.xprofile``` allows you to execute commands at the beginning of the X user session - before the window manager is started.

1. Add a file named ```.xprofile``` to your **$HOME** directory

2. Don't forget to put a **&** sign at the end of each command line

[More useful information about .xprofile](https://wiki.archlinux.org/index.php/Xprofile)

## .xinitrc
**Usage:** If no specific client program is given on the command line, xinit will look for a hidden file in the **$HOME** directory called ```.xinitrc``` to run as a shell script to start up client programs.

1. Add a file named ```.xinitrc``` to your **$HOME** directory

2. Add settings for your window manager, desctop environment etc. here

[More useful information about .xinitrc](https://wiki.archlinux.org/index.php/Xinit)

## .zprofile
**Usage:** ```.zprofile``` is used for environment variables and tools configiration

1. Add a file named ```.zprofile``` to your **$HOME** directory

2. Add settings for your ```zsh``` here

[More useful information about .zprofile](https://unix.stackexchange.com/questions/71253/what-should-shouldnt-go-in-zshenv-zshrc-zlogin-zprofile-zlogout)
