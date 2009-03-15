if [ -f ~/.bash_common ]; then
	. ~/.bash_common
fi

export PATH="$PATH:/usr/local/bin:/opt/local/bin:/sw/bin:~/.bin"
export SVN_EDITOR="vim"

export PYTHONPATH="/opt/local/lib:$PYTHONPATH"
alias rickroll='open http://www.youtube.com/watch?v=oHg5SJYRHA0'

# Open the Twitter Fluid instance with the WebKit nightly's framework instead of system-supplied
alias twitter-fluid-webkit="env DYLD_FRAMEWORK_PATH=/Applications/WebKit.app/Contents/Resources WEBKIT_UNSET_DYLD_FRAMEWORK_PATH=YES /Applications/Twitter.app/Contents/MacOS/FluidInstance"
