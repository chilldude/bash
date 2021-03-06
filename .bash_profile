#!/bin/bash
export PATH="/home/rollerpig/.meteor/tools/latest/bin:$PATH"

extract () {
  if [ -f $1 ] ; then
      case $1 in
   *.tar.bz2)  tar xvjf $1 && cd $(basename "$1" .tar.bz2) ;;
   *.tar.gz)   tar xvzf $1 && cd $(basename "$1" .tar.gz) ;;
   *.tar.xz)   tar Jxvf $1 && cd $(basename "$1" .tar.xz) ;;
   *.bz2)      bunzip2 $1 && cd $(basename "$1" /bz2) ;;
   *.rar)      unrar x $1 && cd $(basename "$1" .rar) ;;
   *.gz)       gunzip $1 && cd $(basename "$1" .gz) ;;
   *.tar)      tar xvf $1 && cd $(basename "$1" .tar) ;;
   *.tbz2)     tar xvjf $1 && cd $(basename "$1" .tbz2) ;;
   *.tgz)      tar xvzf $1 && cd $(basename "$1" .tgz) ;;
   *.zip)      unzip $1 && cd $(basename "$1" .zip) ;;
   *.Z)        uncompress $1 && cd $(basename "$1" .Z) ;;
   *.7z)       7z x $1 && cd $(basename "$1" .7z) ;;
   *)      echo "don't know how to extract '$1'..." ;;
      esac
  else
      echo "'$1' is not a valid file!"
  fi
}

export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
export LSCOLORS=dxfxcxdxbxegedabagacad
export VMAIL_HTML_PART_READER='elinks -dump'

#custom prompt
#export PS1="\t | \u@\h | \w $ "
PS1="\[\033[0;36m\][\!]\`if [[ \$? = "0" ]]; then echo "\\[\\033[36m\\]"; else echo "\\[\\033[36m\\]"; fi\`[\u.\h: \`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W"; else echo "\\w"; fi\`]\$\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"

# don't put duplicate lines in the history
export HISTCONTROL=ignoreboth:erasedups
# set history length
HISTFILESIZE=1000000000
HISTSIZE=1000000

# append to the history file, don't overwrite it
shopt -s histappend
# check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize
# correct minor errors in the spelling of a directory component in a cd command
shopt -s cdspell
# save all lines of a multiple-line command in the same history entry (allows easy re-editing of multi-line commands)
shopt -s cmdhist

# edit this file!
alias profile='vim ~/.bash_profile -w; sauce'
alias sauce='source ~/.bash_profile'

#flush cache
alias flush='dscacheutil -flushcache'

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

#copy the working directory into the clipboard
alias cwd='pwd | pbcopy'

# listing files - (lazy)
alias l='ls -alh'
alias lt='l -t | less'

# tac - unix cat but backwards. hilarity > function
alias tac="sed '1!G;h;\$!d'"

#generate a random password
alias randpw="openssl rand -base64 12"

# Lap warmer (do not use on low power)
alias warm='nice -n 20 ruby -e "loop {}" &'

#recursively print tree of current directory
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

open_red_escape="\033[31m"
open_blue_escape="\033[34m"
open_green_escape="\033[32m"
open_orange_escape="\033[33m"
open_white_escape="\033[37m"
close_escape="^\033[0m"

echo -e " "
echo -e "${open_green_escape}+-----------------------------------------------------------+"
echo -e "${open_green_escape}|                                                           |"                                                      
echo -e "${open_green_escape}| ${open_orange_escape}                                 WWWWWW||WWWWWW           ${open_green_escape}|"
echo -e "${open_green_escape}| ${open_orange_escape}                                  W W W||W W W            ${open_green_escape}|"
echo -e "${open_green_escape}| ${open_orange_escape}                                       ||                 ${open_green_escape}|"
echo -e "${open_green_escape}| ${open_orange_escape} +-------------------------------+   ( OO )__________     ${open_green_escape}|"
echo -e "${open_green_escape}| ${open_orange_escape} |  Not all those who wonder...  |    /  |           \    ${open_green_escape}|"
echo -e "${open_green_escape}| ${open_orange_escape} |  Are lost.                    |   /o o|    #420    \   ${open_green_escape}|"
echo -e "${open_green_escape}| ${open_orange_escape} +------------------------------\|   \___/||_||__||_|| *  ${open_green_escape}|"
echo -e "${open_green_escape}| ${open_orange_escape}                                 \_       || ||  || ||    ${open_green_escape}|"
echo -e "${open_green_escape}| ${open_orange_escape}                                         _||_|| _||_||    ${open_green_escape}|"
echo -e "${open_green_escape}| ${open_orange_escape}                                        (__|__|(__|__|    ${open_green_escape}|"
echo -e "${open_green_escape}|                                                           |"
echo -e "${open_green_escape}+-----------------------------------------------------------+"
echo -e " "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
