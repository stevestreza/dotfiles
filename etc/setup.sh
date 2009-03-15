#! /bin/bash

SCRIPT_DIR="etc";
NEEDS_RESET="false";

#if [ "$(pwd | sed "s/^.*\/\(.*\)$/\1/g")" -eq "$SCRIPT_DIR" ]; then
#    cd ..;
#    NEEDS_RESET="true"
#fi

function deployFile {
    OLDFILE="$(pwd)/$1"
    NEWFILE="$HOME/$2"
    
    if [ -f $OLDFILE ]; then
#        echo "From $OLDFILE to $NEWFILE";
        if [ -f $NEWFILE ]; then
#            echo "Backing up $NEWFILE to $NEWFILE.bak"
            mv $NEWFILE $NEWFILE.bak
        fi
        ln -s $OLDFILE $NEWFILE;
    fi
}

deployFile bash_common .bash_common
deployFile bash_common.private .bash_common.private
deployFile bash_profile .bash_profile
deployFile bashrc .bashrc
deployFile gitignore .gitignore
deployFile screenrc .bash_common
deployFile etc/git-completion.bash .git-completion.bash

#if [ "$NEEDS_RESET" -eq "true" ]; then
#    cd $SCRIPT_DIR;
#fi;