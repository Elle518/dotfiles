export PATH=/usr/local/bin:$PATH

#export PS1="\u$ \W "

if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
  export PS1='\u$ \W$(__git_ps1 " (%s)") > '
fi

alias rm="/bin/rm -i"

# Setting PATH for MySQL
export PATH=/Applications/MAMP/Library/bin:$PATH
