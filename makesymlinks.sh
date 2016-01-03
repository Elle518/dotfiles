########## Variables

dir=~/dotfiles                         # dotfiles directory
olddir=~/.dotfiles_old                 # old dotfiles backup directory
undodir=~/.vim/undo                    # undo directory
backupdir=~/.vim/backup                # backup directory
colorsdir=~/.vim/colors                # colors directory
bundledir=~/.vim/bundle                # bundle directory
dunadir=~/Code/Duna/colors                    # Duna color scheme directory
dunafile="duna.vim"                    # Duna color scheme file
files=".bash_profile .vimrc .vim .gitconfig .ycm_extra_conf.py .git-completion.bash .git-prompt.sh"       # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/$file ~/.dotfiles_old/
    echo "...done"
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
    echo "...done"
done

# create .vim directories
echo "Creating .vim directories"
cd
mkdir -p $undodir
mkdir -p $backupdir
mkdir -p $colorsdir
mkdir -p $bundledir
echo "...done"

# Creating Duna color scheme symlink
echo "Creating symlink to $dunafile in $colorsdir"
ln -s $dunadir/$dunafile $colorsdir/$dunafile
echo "...done"
