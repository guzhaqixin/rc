#To make homebrew give me english applicaiton
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
#taskwarrior settings
alias in='task add '
export PS1='$(task +PENDING count) '$PS1
tickle () {
    deadline=$1
    shift
    in +tickle wait:$deadline $@
}
alias tick=tickle
alias think='tickle +1d'
alias rnd='task add +rnd +next +@computer +@online'
#some settings
set -o vi

##add some abbreviation
alias ll='ls -l'
alias v='vim'
alias tecentCloudLogin="ssh -q -l zhangxiuqi -p 22 118.25.213.142"
alias cat="ccat --bg=\"dark\""

##some necessity for other program
#plenv
export PATH="$HOME/.plenv/bin:$PATH"
eval "$(plenv init -)"

##some ridiculous things
alias shit='echo "I am really sorry!"'
alias shiit='say "I am really really sorry!"'
alias shiiit='open -a itunes'
alias shiiiit='open -a Firefox'
alias shiiiiit='open -a steam'

##some script
#alias exercise='exercise.sh'
alias getUrandom='_getUrandom(){
    if [ $# = 1 ]; then
        LC_CTYPE=C tr -dc $1 < /dev/urandom | head -c 32 | xargs;
    elif [ $# = 0 ]; then
        LC_CTYPE=C tr -dc 0-9 < /dev/urandom | head -c 32 | xargs;
    elif [ $# > 1 ]; then
        echo "usage: getUrandom alphabet";
    fi
};_getUrandom'
alias tre='testRegularExpression.xpl'
#alias mycd='myfind.sh'
alias mycd='_mycd(){
if [ $# = 2 ]; then
        cd `find $1 -name $2`;
    elif [ $# = 1 ]; then
        cd `find ~/Documents -name $1`;
    elif [ $# > 2 ]; then
        echo "usage: mycd top_directory target_file";
    fi
};_mycd'
alias cdesk='cleanDesktop.xpl'
alias 1025='10_2_5.xpl'
alias hidHiddenFiles='hidHiddenFiles.sh'
alias showHiddenFiles='showHiddenFiles.sh'
alias newDiary='new.xpl'

#some foolish things for little convenience of VG101
#alias hgcc='_myHWgcc(){
#		gcc -Wall $@ -o main;
#	    };_myHWgcc'
#alias 'hg++'='_myHWg++(){
#		g++ -Wall $@ -o main;
#	    };_myHWg++'
#alias 'hgl++'='_myHWg++WithOpenGL(){
#		g++ -std=c++11 -pedantic -Wall -o main $* -framework OpenGL -framework GLUT;
#	    };_myHWg++WithOpenGL'
