export CLICOLOR=1
export LSCOLORSVB=gxgxaxdxcxegedabagacad

##
# Your previous /Users/zhangxiuqi/.bash_profile file was backed up as /Users/zhangxiuqi/.bash_profile.macports-saved_2017-07-23_at_14:44:46
##

# MacPorts Installer addition on 2017-07-23_at_14:44:46: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

if [ -f ~/.bashrc ]; 
then
    source ~/.bashrc
fi

export PATH="$HOME/.cargo/bin:$PATH"

#My own scripts
export PATH="$HOME/local:$PATH"
PATH=$PATH:/opt/metasploit-framework/bin
export PATH=$PATH:/opt/metasploit-framework/bin
