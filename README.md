########################################

###########Arch linux Configs###########
# remap CapsLock to Ctl, now all commonly
# used keys are at the same row
xmodmap xmodmap

###########OSX CONFIGURATIONS###########

#first things first, install Homebrew
visit "http://brew.sh" for detail

#essential packages from homebrew
brew update
brew install htop
##package to build YCM
brew install cmake
##boost library installed at /usr/include/boost
brew install boost
##BSD UNIX Kit mkisofs to archive iso images
brew install cdrtools #for mkisofs
brew install p7zip
brew install xz
#install Vim 8 on OSX
brew install vim
#fuzzy find easier than find
brew install fzf
#ag easier than grep
brew install ag

#essential apps need to install that no in app store
#do not install them from brew-cask
iterm2
xquartz
bettertouchtool
google-chrome
firefox
vlc
xld
audacity
vox
uTorrent
iGetter
Skim		#PDF reader
Evernote
Cyberduck	#remote server file management
Calibre	#ebook reader

#essential packages from AppStore
##Wechat must be installed from AppStore
##BetterSnapTool must be installed from AppStore

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

#Configure Vim with vim-plug
##1) copy the .vim/ and .vimrc file from os_config repo to ~/
##2) check https://github.com/junegunn/vim-plug
##wait till all vim plugins get installed

#Configure YCM
##1) Not needed now since we are using vim-plug instead of Vundle
Under ~/.vim/bundle/YouCompleteMe/
./install.sh --clang-completer
##wait till it finishes building.
##2) In file
'~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
##YCM ycm YouCompleteMe Check for C++ headers on OSX, use following command
##echo | clang -stdlib=libc++ -v -E -x c++ -
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
