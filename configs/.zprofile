[[ -f ~/.zshrc ]] && source ~/.zshrc

#Add bin if it exists
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

#Golang
if [ -d "$HOME/projects/go" ] ; then
    export GOPATH=$HOME/projects/go
    export GOBIN=$GOPATH/bin
    export PATH=$PATH:$GOBIN
fi

#Scala play
if [ -d "$HOME/bin/play" ] ; then
    export PATH=$PATH:$HOME/bin/play
fi

#Cabal
if [ -d "$HOME/.cabal/bin" ] ; then
    export PATH=$PATH:$HOME/.cabal/bin
fi

export LD_LIBRARY_PATH=/usr/local/lib
export PATH=$PATH:/usr/local/go/bin

# startx if on tty1 and tmux on tty2
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
    #exec xinit -- :0 -novtswitch &>/dev/null &
    #logout
    startx 
    logout
fi

export PATH="/usr/sbin:$PATH"

#Ruby
export PATH="`ruby -rubygems -e 'puts Gem.user_dir'`/bin:$PATH"

#Java
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk

#Hadoop
export HADOOP_CLASSPATH=$JAVA_HOME/lib/tools.jar
