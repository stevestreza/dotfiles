if [ -f ~/.bash_common ]; then
	. ~/.bash_common
fi

if [ -f ~/.bash_profile ]; then
   source ~/.bash_profile
fi

if [ -f $HOME/.Xmodmap ]; then
    /usr/X11/bin/xmodmap $HOME/.Xmodmap
fi

if [ -f $HOME/~.X_profile ]; then
	source ~/.X_profile
fi
