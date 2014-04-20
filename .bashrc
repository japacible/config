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

# Makes irssi work on tmux without recent line rewrites
[ -n "$TMUX" ] && export TERM="screen-256color" 

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
alias reload='. ~/.bashrc'

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
alias ~='cd ~'

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

# SSH UW
alias dante='ssh apacible@dante.u.washington.edu'
alias dante11='ssh apacible@dante11.u.washington.edu'

# SSH UW CSE
alias acho='ssh apacible@acho.cs.washington.edu'
alias acme='ssh apacible@acme.cs.washington.edu'
alias adaplas='ssh apacible@adaplas.cs.washington.edu'
alias aeb='ssh apacible@aeb.cs.washington.edu'
alias agk='ssh apacible@agk.cs.washington.edu'
alias agraf='ssh apacible@agraf.cs.washington.edu'
alias alistair='ssh apacible@alistair.cs.washington.edu'
alias amlia='ssh apacible@amlia.cs.washington.edu'
alias ananth='ssh apacible@ananth.cs.washington.edu'
alias andi='ssh apacible@andi.cs.washington.edu'
alias attu='ssh apacible@attu.cs.washington.edu'
alias attu1='ssh apacible@attu1.cs.washington.edu'
alias attu2='ssh apacible@attu2.cs.washington.edu'
alias attu3='ssh apacible@attu3.cs.washington.edu'
alias attu32='ssh apacible@attu32.cs.washington.edu'
alias attu4='ssh apacible@attu4.cs.washington.edu'
alias bcrl='ssh apacible@bcrl.cs.washington.edu'
alias bpm='ssh apacible@bpm.cs.washington.edu'
alias broonie='ssh apacible@broonie.cs.washington.edu'
alias brudley='ssh apacible@brudley.cs.washington.edu'
alias caspar='ssh apacible@caspar.cs.washington.edu'
alias cbou='ssh apacible@cbou.cs.washington.edu'
alias chunkeey='ssh apacible@chunkeey.cs.washington.edu'
alias cjb='ssh apacible@cjb.cs.washington.edu'
alias cooldavid='ssh apacible@cooldavid.cs.washington.edu'
alias crope='ssh apacible@crope.cs.washington.edu'
alias cubist='ssh apacible@cubist.cs.washington.edu'
alias davilla='ssh apacible@davilla.cs.washington.edu'
alias dirk='ssh apacible@dirk.cs.washington.edu'
alias divy='ssh apacible@divy.cs.washington.edu'
alias elder='ssh apacible@elder.cs.washington.edu'
alias ericvh='ssh apacible@ericvh.cs.washington.edu'
alias geert='ssh apacible@geert.cs.washington.edu'
alias gxt='ssh apacible@gxt.cs.washington.edu'
alias hannes='ssh apacible@hannes.cs.washington.edu'
alias hare='ssh apacible@hare.cs.washington.edu'
alias hdegoade='ssh apacible@hdegoade.cs.washington.edu'
alias hjk='ssh apacible@hjk.cs.washington.edu'
alias horms='ssh apacible@horms.cs.washington.edu'
alias hughd='ssh apacible@hughd.cs.washington.edu'
alias humuhumunukunukuapuaa='ssh apacible@humuhumunukunukuapuaa.cs.washington.edu'
alias ian='ssh apacible@ian.cs.washington.edu'
alias isely='ssh apacible@isely.cs.washington.edu'
alias jamie='ssh apacible@jamie.cs.washington.edu'
alias javier='ssh apacible@javier.cs.washington.edu'
alias jes='ssh apacible@jes.cs.washington.edu'
alias kaber='ssh apacible@kaber.cs.washington.edu'
alias khc='ssh apacible@khc.cs.washington.edu'
alias kiska='ssh apacible@kiska.cs.washington.edu'
alias lucho='ssh apacible@lucho.cs.washington.edu'
alias maxextreme='ssh apacible@maxextreme.cs.washington.edu'
alias quake='ssh apacible@quake.cs.washington.edu'
alias quasi='ssh apacible@quasi.cs.washington.edu'
alias rminnich='ssh apacible@rminnich.cs.washington.edu'
alias semanti='ssh apacible@semanti.cs.washington.edu'
alias umnak='ssh apacible@umnak.cs.washington.edu'

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
alias host='vim ~/etc/hosts'

# Pair programming
alias jun='tmux -S /tmp/tmux-junpucublu attach -r' # with sunjayc

# Dev 
alias gdb='gdb -tui'
alias myserver='python -m SimpleHTTPServer 8000'
alias 5555='nc -l 5555'
alias errorlogs='tail -f /var/log/apache2/error.log'
alias pypy='~/pypy-2.0-beta1/bin/pypy'
alias gh='git checkout gh-pages && git rebase master && git push origin gh-pages && git checkout master'

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
