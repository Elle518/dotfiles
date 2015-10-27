#Dotfiles
These are my own dotfiles resources

##Requirements
Set bash as your login shell
~~~
$ chsh -s /bin/bash
~~~

Create Code folder in home directory
~~~
$ mkdir ~/Code
~~~

Clone Duna color scheme in Code directory
~~~
$ cd Code/
$ git clone https://github.com/Elle518/Duna.git
~~~

##Installation
Clone the repository in your home directory
~~~
$ git clone https://github.com/Elle518/dotfiles.git dotfiles
~~~

Run makesymlinks.sh to create the symbolic links and directories required
~~~
$ ~/dotfiles/makesymlinks.sh
~~~

##Install plugins
Clone Vundle repository
~~~
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
~~~

Open Vim and run
~~~
:PluginInstall
~~~

##YCM semantic completion support for C-family languages
~~~
sudo apt-get install build-essential cmake
sudo apt-get install python-dev
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
~~~

Download the latest version of `libclang` from [LLVM.org](http://llvm.org/releases/download.html).
Select **Clang for x86 64 Ubuntu** from the Pre-Built Binaries list.

~~~
mkdir ~/ycm_temp/llvm_root_dir
~~~

Extract `libclang` inside `llvm_root_dir` (with `bin`, `lib`, `include`...)

~~~
cd ~/ycm_build
cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=~/ycm_temp/llvm_root_dir . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
cmake --build . --target ycm_support_libs --config Release
~~~
