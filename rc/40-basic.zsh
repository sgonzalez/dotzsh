# Load and run compinit
autoload -U compinit
compinit -i

# Zsh prompt
# http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#SEC59
export PROMPT=$'%(?.%F{green}✔︎%f .%F{red}✘%F{magenta} [%?]%f )%F{red}%1d %n%# %f' # left prompt
export RPROMPT=$'%F{cyan}%*%f' # right prompt

export OPENNI2_INCLUDE=/usr/local/include/ni2
export OPENNI2_REDIST=/usr/local/lib/ni2


# Mac titlebar stuff
precmd () {print -Pn "\e]2; %~/ \a"}
preexec () {print -Pn "\e]2; %~/ \a"}

# RVM Stuff
[[ -s "/Users/santiagogonzalez/.rvm/scripts/rvm" ]] && source "/Users/santiagogonzalez/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Save history
HISTSIZE=5000
if (( ! EUID )); then
  HISTFILE=~/.history_root
else
  HISTFILE=~/.history
fi
SAVEHIST=5000

# Various Options
setopt AUTO_LIST # Tab completion stuff
setopt LIST_AMBIGUOUS # Tab completion stuff
setopt TRANSIENT_RPROMPT # One RPROMPT
setopt AUTO_CD # No cd needed
setopt NO_BEEP # No annoying, random beeps

# Default editor
#export EDITOR=$"vim"



#cowsay "Hello, Santiago. Mooooo"
#fortune startrek | cowsay | lolcat
#say -v Sangeeta "Hello, Santiago. Mooooo"
#~/Dropbox/browntraffic/other/randomTasks/vimconfig &