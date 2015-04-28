# Load and run compinit
autoload -U compinit
compinit -i

# Zsh prompt
# http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#SEC59
export PROMPT=$'%F{red}%1d %n%# %f' #left prompt
export RPROMPT=$'%F{cyan}%*%f'

export OPENNI2_INCLUDE=/usr/local/include/ni2
export OPENNI2_REDIST=/usr/local/lib/ni2

# Update prompt every second (I know, this is super hacky)
TMOUT=1
TRAPALRM() {
    zle reset-prompt
}

# Mac titlebar stuff
# precmd () {print -Pn "\e]2; %~/ \a"}
# preexec () {print -Pn "\e]2; %~/ \a"}

# RVM Stuff
[[ -s "/Users/santiagogonzalez/.rvm/scripts/rvm" ]] && source "/Users/santiagogonzalez/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Save history
HISTSIZE=1000
if (( ! EUID )); then
  HISTFILE=~/.history_root
else
  HISTFILE=~/.history
fi
SAVEHIST=1000

# Various Options
setopt AUTO_LIST # Tab completion stuff
setopt LIST_AMBIGUOUS # Tab completion stuff
setopt TRANSIENT_RPROMPT # One RPROMPT
setopt AUTO_CD # No cd needed
setopt NO_BEEP # No annoying, random beeps

# Default editor
#export EDITOR=$"vim"


# Fun Aliases
alias ls="ls -G"
alias ll="ls -l"
alias la="ls -a"
alias startpsql="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stoppsql="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop"
alias startredis="redis-server /usr/local/etc/redis.conf"

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


# Sketch alias
export SKETCH_HOME=~/Dropbox/MIT/sketch-frontend
function sketch () {
    export MAVEN_OPTS="-XX:MaxPermSize=256m -Xms40m -Xmx600m -ea -server"
    mvn -o -f "${SKETCH_HOME}"/pom.xml -e compile exec:java \
      -Dexec.mainClass=sketch.compiler.main.seq.SequentialSketchMain \
      -Dexec.args="$*"
}

# Julia alias
alias julia="/Applications/Juno.app/Contents/Resources/app/julia/bin/julia"


#cowsay "Hello, Santiago. Mooooo"
#fortune startrek | cowsay | lolcat
#say -v Sangeeta "Hello, Santiago. Mooooo"
#~/Dropbox/browntraffic/other/randomTasks/vimconfig &