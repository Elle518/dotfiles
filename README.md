# Dotfiles
These are my own dotfiles resources

## Requirements
Set `bash` as your login shell
~~~
$ chsh -s /bin/bash
~~~

Create `Code` folder in home directory
~~~
$ mkdir ~/Code
~~~

Clone `duna.vim` color scheme in `Code` directory
~~~
$ cd Code/
$ git clone https://github.com/Elle518/Duna.git
~~~

## Installation
Clone the repository in your home directory
~~~
$ git clone https://github.com/Elle518/dotfiles.git dotfiles
~~~

Run `makesymlinks.sh` to create the symbolic links and directories required
~~~
$ ~/dotfiles/makesymlinks.sh
~~~

## Install plugins
Clone `Vundle` repository
~~~
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
~~~

Open `Vim` and run
~~~
:PluginInstall
~~~

## YCM semantic completion support for C-family languages
We will need to have `cmake` installed in order to generate the required makefiles.
For Linux we can install cmake with this:
~~~
$ sudo apt-get install cmake
~~~

For Mac users can also get it through Homebrew with `brew install cmake`.

On a Unix OS, we need to make sure we have Python headers installed. On a Debian-like Linux distro, we will do:
~~~
$ sudo apt-get install python-dev python3-dev
~~~

On Mac they should already be present.

Next, for compiling YCM with semantic support for C-family languages:
~~~
$ cd ~/.vim/bundle/YouCompleteMe
$ ./install.py --clang-completer
~~~

Download the latest version of `libclang` from [LLVM.org](http://llvm.org/releases/download.html).
Select **Clang for x86 64 Ubuntu** or **Clang for Mac OS X** from the Pre-Built Binaries list as needed.

~~~
$ mkdir ~/ycm_temp
$ cd ~/ycm_temp/
$ mkdir llvm_root_dir
~~~

Extract `libclang` inside `llvm_root_dir` (with `bin`, `lib`, `include`...)

~~~
$ mkdir ~/ycm_build
$ cd ~/ycm_build/
$ cmake -G "Unix Makefiles" -DPATH_TO_LLVM_ROOT=~/ycm_temp/llvm_root_dir . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
$ cmake --build . --target ycm_core --config Release
~~~

## vim-instant-markdown installation requirements
Install [`node.js`](https://nodejs.org/en/)
~~~
$ sudo npm -g install instant-markdown-d
~~~

On Linux, the `xdg-utils` package needs to be installed
