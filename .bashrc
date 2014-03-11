# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

if [ -f /mnt/vol/engshare/admin/scripts/master.bashrc ]; then
  . /mnt/vol/engshare/admin/scripts/master.bashrc
fi

# Hello, Apacible! :D
echo 'Greetings, jenpa!'
echo ""`date "+%I:%M %p, %A %B %d, %Y"`.
echo ''

PATH="/usr/local/bin:/usr/local/sbin:$PATH"
PATH="/usr/local/heroku/bin:$PATH"
PATH="/usr/local/jdk-7u4-64/bin:$PATH"
PATH="/usr/local/bin/rails:$PATH"
PATH="$HOME/local/bin:$PATH"

export PATH
export CLASSPATH=.:sqljdbc4.jar

# Update window size after every command
# Update values of LINES/COLUMNS if needed
shopt -s checkwinsize

# History Length
HISTSIZE=150000
HISTFILESIZE=200000

# History Duplicates
HISTCONTROL=ignoredups:ignorespace

# Machine, X.
alias hibernate='sudo pm-hibernate'
alias suspend='sudo pm-suspend'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown -h now'

# Color Everything
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias 'la'='ls -a --color=auto'
alias 'll'='ls -alF --color=auto'
alias 'l'='ls -cF --color=auto'
alias 'lt'='ls -lt --color=auto'

# Navigation
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../'

# Text Editors
alias vi=vim
alias edit='vim'
alias sublime='~/Sublime\ Text\ 2/sublime_text'

# Browser
alias chrome='/opt/google/chrome/chrome'
alias browser=chrome
alias chromehome='/usr/bin/google-chrome --blacklist-accelerated-compositing'

# Chess 
alias fics='xboard -ics -icshost freechess.org' #FICS

# Tell Me
alias speed='python2.7 ~/scripts/speedtest-cli/speedtest-cli'
alias ip='wget -qO- icanhazip.com'
alias os='uname -srm'
alias now='date'
alias whoami='pwd'

# SSH
alias attu='ssh apacible@attu.cs.washington.edu'
alias attu1='ssh apacible@attu1.cs.washington.edu'
alias attu2='ssh apacible@attu2.cs.washington.edu'
alias attu3='ssh apacible@attu3.cs.washington.edu'
alias attu4='ssh apacible@attu4.cs.washington.edu'
alias attu32='ssh apacible@attu32.cs.washington.edu'        #32bit
alias dante='ssh apacible@dante.u.washington.edu'
alias dante11='ssh apacible@dante11.u.washington.edu'
alias snowball='ssh apacible@snowball.cs.washington.edu'    #002
alias detroit='ssh apacible@detroit.cs.washington.edu'      #002
alias nashville='ssh apacible@nashville.cs.washington.edu'  #002
alias montague='ssh apacible@montague.cs.washington.edu'    #002
alias chumba='ssh apacible@chumba.cs.washington.edu'        #002
alias acho='ssh apacible@acho.cs.washington.edu'            #002
alias whidbey='ssh apacible@whidbey.cs.washington.edu'      #006
alias quasi='ssh apacible@quasi.cs.washington.edu'          #ACM
alias cubist='ssh apacible@cubist.cs.washington.edu'        #403

# Fun
alias meow='echo meow'
alias woof='echo woof'
alias beep='echo -e "\a"'

# Packages Stuff
alias agi='sudo apt-get install'
alias agr='sudo apt-get remove'
alias agu='sudo apt-get update'
alias acs='apt-cache search'
alias yum='sudo yum'

# Echo
alias path='echo -e ${PATH//:/\\n}'

# Common directories
alias dante='cd ~/Workspace/dantes-inferno'
alias sandbox='cd ~/Workspace/sandbox'
alias cse='cd ~/Workspace/uwcse-files'
alias res='cd ~/Workspace/res'
alias dropbox='cd ~/Dropbox'
alias 440='cd ~/Workspace/uwcse-files/CSE440/wi14'
alias 461='cd ~/Workspace/uwcse-files/CSE461/wi14'

# School stuff
alias reg='./run cse461.cs.washington.edu 46101' # CSE 461 HW1

# Pair programming
alias jun='tmux -S /tmp/tmux-junpucublu attach -r' # CSE 461 with sunjayc

# Ports
alias 5555='nc -l 5555'

# Easy access to files
alias host='vim ~/etc/hosts'

# Logs
alias errorlogs='tail -f /var/log/apache2/error.log'

# Python
alias pypy='~/pypy-2.0-beta1/bin/pypy'

# Autojump
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

# Extraction
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

function setcount() {
  sort $1 | uniq -c | sort -n -r
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
