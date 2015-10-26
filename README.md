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
