if [ -f ~/.bash_common ]; then
	. ~/.bash_common
fi

# as far as I can tell, this file gets loaded by xterms
# coming from X11

# load keyboard modifiers if they exist
if [ -f $HOME/.Xmodmap ]; then
    /usr/X11/bin/xmodmap $HOME/.Xmodmap
fi

#load the X profile if it exists
if [ -f $HOME/~.X_profile ]; then
	source ~/.X_profile
fi
