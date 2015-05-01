########################################

###########DEBIAN CONFIGURATIONS########

##20-thinkpad.conf only applys to thinkpad models
cp 20-thinkpad.conf /usr/share/X11/xorg.conf.d/20-thinkpad.conf

##package required for my i3-wm configuration:
apt-get install i3 feh alsa-utils xbacklight
alsa-utils: amixer (audio_ctl)
xbacklight: xbacklight (brightness_ctl)

##package required for my vim and bash configuration

###1) vim with python2 support, so that YCM can be used
vim-youcompleteme
###2) package to build YCM
python-dev cmake llvm-3.5 clang-3.5

####debian official boost library package
####since dpkg Boost library is too old, we can download the latest
####version from boost website.
(libboost-all-dev)

###3) some useful packages to read code
cscope ctags

##package to enable Chinese input method
ibus-pinyin

##utilities for qemu VM control
nfs-kernel-server qemu qemu-kvm

##other useful packages
apt-file
git
texlive
htop
pxz
###support exfat usb drive
exfat-fuse exfat-utils
###archive iso images
genisoimage
###kernel building
build-essential




########################################

###########OSX CONFIGURATIONS###########

#first things first, install Homebrew
visit "http://brew.sh" for detail

#essential packages from homebrew
brew install caskroom/cask/brew-cask
brew update
brew install htop
##package to build YCM
brew install cmake
##boost library installed at /usr/include/boost
brew install boost
##BSD UNIX Kit mkisofs to archive iso images
brew install cdrtools
brew install cscope
brew install ctags
brew install p7zip
brew install python3
##Latest xz utility, it should support parallelism
brew install xz

#essential packages from brew cask
##utility and productivity
brew cask install alfred
brew cask install iterm2
brew cask install xquartz
brew cask install bettertouchtool
brew cask install java
brew cask install flash
brew cask install adobe-reader
brew cask install dropbox
brew cask install virtualbox
##multimedia
brew cask install google-chrome
brew cask install firefox
brew cask install vlc
brew cask install xld
brew cask install mplayerx
brew cask install audacity
brew cask install vox

#essential packages from thrid-party
uTorrent
iGetter

#essential packages from AppStore
##Wechat must be install from AppStore

#install Vim on OSX
##Before install MacVim, XCode must be installed from AppStore
##Then MacVim can be installed from Homebrew
brew install macvim
##After the installation, find the path to commands:
macvim mvimdiff mview / mvim mvimdiff mview
##make symbolic links to them, for examples:
ln -s /usr/local/bin/mvim /usr/local/bin/vim
ln -s /usr/local/bin/mvim /usr/local/bin/vi
ln -s /usr/local/bin/mvimdiff /usr/local/bin/vimdiff
ln -s /usr/local/bin/mview /usr/local/bin/view
##now vim/vi can be invoked from commandline




########################################

###########General CONFIGURATIONS#######

#Configure Terminal Emulator (Debian: gnome-terminal | OSX: iterm2)
##1) install powerline fonts
git clone https://github.com/powerline/fonts
##2) under the fonts directory
./install.sh
##3) update font cache
fc-cache -vf ~/.fonts/
##4) use liberation regular powerline fonts for the terminal

#Configure Vim with Vundle
##1) copy the .vim/ and .vimrc file from os_config repo to ~/
##2) mkdir bundle under ~/.vim
##3) under ~/.vim/bundle/
git clone https://github.com/gmarik/Vundle.vim
##4) invoke vim from commandline, in ex mode type command
:VundleInstall
##wait till all vim plugins get installed

#Configure YCM
##1) Under ~/.vim/bundle/YouCompleteMe/
./install.sh --clang-completer
##wait till it finishes building.
##2) In file
'~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
##update the proper path for boost library, and set proper option for c++.
##to support C++11 and C++14, comment out the c++98 option, and add c++1y
##An example .ycm_extra_conf.py file for OSX can be found in os_config repo
##misc/

#Configure the shell prompt
##1) Generate the prompt configuration
ex:	PromptlineSnapshot	[somefile]	[airline]	[full]
												filename		theme			present
##2) Put configure in .bashrc
cat somefile >> .bashrc

##3) source the .bashrc file in the login configuration file.
##for example, .profile || .bash_profile



###########END CONFIGURATIONS##########
#######################################
#######################################



###########MISC NOTES##################
#RAM disk on Linux
I use tmpfs instead of zramdisk, since I have more memory now.
In my Debian box, I have a UDISK and VDISK mount point under /media
> mount -t tmpfs -o size=8G tmpfs /media/VDISK
to use zramdisk,
you need a linux kernel with zram kernel module installed

#RAM disk on OSX
ramdisk script is for osx only
