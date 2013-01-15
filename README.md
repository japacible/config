Notes:
======
List of configurations/software/packages for future reference.

Distribution:
============
Currently running Ubuntu 12.04 LST (Penguin thingy thing)

Aptitude Packages (sudo apt-get install …):
===========================================
git
ack-grep
openjdk-6-jdk
xmonad suckless-tools
zsh
terminator
 mkdir ~/.config/terminator
 touch ~/.config/terminator/config
 See .terminator and .link.sh from ttps://github.com/DavidMah/mah-dotfiles
gnome-tweak-tool
 http://www.noobslab.com/2012/10/install-gnome-tweak-tool-36-in-ubuntu.html
vim-gnome
openssh
 https://help.ubuntu.com/10.04/serverguide/openssh-server.html
lm-sensors hddtemp psensor (hardware temperature monitor)
my-weather-indicator
 sudo add-apt-repository ppa:atareao/atareao
 sudo apt-get update
 sudo apt-get install my-weather-indicator

Download Packages:
==================
dropbox
 https://www.dropbox.com
google-chrome
 https://www.google.com/intl/en/chrome/browser/
oh-my-zsh
 https://github.com/robbyrussell/oh-my-zsh
 http://zanshin.net/2011/08/12/oh-my-zsh/
autojump
 https://github.com/joelthelion/autojump
janus
 https://github.com/carlhuda/janus
speedtest-cli
Sublime Text 2

Themes:
=======
GtkDroid Jelly Bean
 http://www.noobslab.com/2012/11/install-gtkdroid-jelly-bean-theme-on.html

Google Chrome Related:
=====================
Vimium for Chrome
Chrome Account Sync

Workspace/Dev:
=============
 Python
 Sqlite3
 Eclipse
 Android SDK
 Maven
 gcc

Misc:
=====
DIsable Online Search:
sudo apt-get remove unity-lens-shopping
Enable Hibernate:
sudo vim /var/lib/polkit-1/localauthority/50-local.d/hibernate.pkla
 [Re-enable Hibernate]
 Identity=unix-user:*
 Action=org.freedesktop.upower.hibernate
 ResultActive=yes
Disable Overaly Scroll Bar:
gsettings set com.canonical.desktop.interface scrollbar-mode normal
Show Username in Panel:
gsettings set com.canonical.indicator.session show-real-name-on-panel true
Move Min/Max/Exit buttons to right:
gconftool-2 --set /apps/metacity/general/button_layout --type string menu:minimize,maximize,close
RhythmBox: http://projects.gnome.org/rhythmbox/
RhythmBox Plugins:
 sudo add-apt-repository ppa:fossfreedom/rhythmbox-plugins
 sudo apt-get update
 sudo apt-get install rhythmbox-plugin-complete
Restricted Extras: sudo apt-get install ubuntu-restricted-extras
Compression/Decompression:
 sudo apt-get install p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack lha arj cabextract file-roller

==========dmah============
Dotfiles:
https://github.com/DavidMah/mah-dotfiles
.bashrc
.vimrc
.gvimrc
.zshrc
.vim
.terminator


Config

Keyboard:
	Speed Max
	Delay Almost Min
	Caps Lock to CTRL
Windows:
Close Window = Ctrl+Alt+Z
Toggle Maximization State = Ctrl+Alt+D
Launchers:
	Home Folder = Ctrl+Alt+N
Custom:
Calculator = “gcalctool” = Ctrl+Alt+0
Chrome = “google-chrome” = Ctrl+Alt+X
Terminator = “terminator” = Ctrl+Alt+A
Navigation:
Workspace Changing = Ctrl+Alt+<HJKL>
Workspace Changing + Bring Window = Ctrl+Alt+Shift+<HJKL>
System:
	Lock screen = Ctrl+Alt+End
github (post install)
Hide Left bar(Appearance)
