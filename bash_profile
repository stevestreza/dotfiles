#import common values
if [ -f ~/.bash_common ]; then
	. ~/.bash_common
fi

# rickrolls the machine. srsly.
alias rickroll='open http://www.youtube.com/watch?v=oHg5SJYRHA0'

# Open the Twitter Fluid instance with the WebKit nightly's framework instead of system-supplied
alias twitter-fluid-webkit="env DYLD_FRAMEWORK_PATH=/Applications/WebKit.app/Contents/Resources WEBKIT_UNSET_DYLD_FRAMEWORK_PATH=YES /Applications/Twitter.app/Contents/MacOS/FluidInstance"
