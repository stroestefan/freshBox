# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
PATH=$PATH:/opt/teaching/bin:/opt/common/bin:/opt/scripts
PATH=$PATH:$HOME/bin

export PATH
case $(tty) in
/dev/tty1) exec /opt/teaching/bin/csstartx
esac
