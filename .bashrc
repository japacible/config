# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export CLASSPATH=.:sqljdbc4.jar

# History Length
HISTSIZE=1500
HISTFILESIZE=2000

# History Duplicates
HISTCONTROL=ignoredups:ignorespace

# Color Everything
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'

# Navigation
alias ..='cd ../..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'

# Text Editors
alias vi=vim
alias edit='vim'
alias sublime='~/Sublime\ Text\ 2/sublime_text'

# Browser
alias chrome='~/opt/google/chrome/chrome'
alias browser=chrome

# SSH
alias attu='ssh attu.cs.washington.edu'
alias attu1='ssh attu1.cs.washington.edu'
alias attu2='ssh attu2.cs.washington.edu'
alias attu3='ssh attu3.cs.washington.edu'
alias attu4='ssh attu4.cs.washington.edu'
alias dante='ssh dante.u.washington.edu'
alias dante11='ssh dante11.u.washington.edu'
alias snowball='ssh snowball.cs.washington.edu'
alias floo='ssh floo.cs.washington.edu'

# Fun
alias monkey="echo oo-oo-oo aa-aa-aa"

# Packages Stuff
alias agi='sudo apt-get install'
alias agr='sudo apt-get remove'
alias agu='sudo apt-get update'
alias acs='apt-cache search'

# Echo
alias path='echo -e ${PATH//:/\\n}'

# Extraction Program
function extract()
{
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xvjf $1     ;;
             *.tar.gz)    tar xvzf $1     ;;
             *.bz2)       bunzip2 $1      ;;
             *.rar)       unrar x $1      ;;
             *.gz)        gunzip $1       ;;
             *.tar)       tar xvf $1      ;;
             *.tbz2)      tar xvjf $1     ;;
             *.tgz)       tar xvzf $1     ;;
             *.zip)       unzip $1        ;;
             *.Z)         uncompress $1   ;;
             *.7z)        7z x $1         ;;
             *)           echo "'$1' cannot be extracted via >extract<" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}
