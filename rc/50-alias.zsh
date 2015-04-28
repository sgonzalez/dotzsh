# ls Aliases
alias ls="ls -G"
alias ll="ls -l"
alias la="ls -a"

# Database Aliases
alias startpsql="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stoppsql="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop"
alias startredis="redis-server /usr/local/etc/redis.conf"

# Print All Colors
alias allcolors='(x=`tput op` y=`printf %80s`;for i in {0..255};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done)'

# Mac Helpers
alias show_hidden="defaults write com.apple.Finder AppleShowAllFiles YES && killall Finder"
alias hide_hidden="defaults write com.apple.Finder AppleShowAllFiles NO && killall Finder"

# Helpers
alias grep='grep --color=auto' # Always highlight grep search term
alias df='df -h'            # Disk free, in gigabytes, not bytes
alias calc='bc'

# Git Aliases
alias ga="git add ."
alias gs="git status"
alias gp="git push"
alias gph="git push heroku master"
alias gc="git commit -am"
alias gu="git pull"
alias gl="git pull"


# Sketch Alias (technically not an alias)
export SKETCH_HOME=~/Dropbox/MIT/sketch-frontend
function sketch () {
    export MAVEN_OPTS="-XX:MaxPermSize=256m -Xms40m -Xmx600m -ea -server"
    mvn -o -f "${SKETCH_HOME}"/pom.xml -e compile exec:java \
      -Dexec.mainClass=sketch.compiler.main.seq.SequentialSketchMain \
      -Dexec.args="$*"
}

# Julia Alias
alias julia="/Applications/Juno.app/Contents/Resources/app/julia/bin/julia"