export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
export LSCOLORS=dxfxcxdxbxegedabagacad
export VMAIL_HTML_PART_READER='elinks -dump'

#custom prompt
#export PS1="\t | \u@\h | \w $ "
PS1="\[\033[0;36m\][\!]\`if [[ \$? = "0" ]]; then echo "\\[\\033[36m\\]"; else echo "\\[\\033[36m\\]"; fi\`[\u.\h: \`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W"; else echo "\\w"; fi\`]\$\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"

##
# Your previous /Users/Tony/.bash_profile file was backed up as /Users/Tony/.bash_profile.macports-saved_2012-07-02_at_16:16:03
##

# MacPorts Installer addition on 2012-07-02_at_16:16:03: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

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

#flush cache
alias flush='dscacheutil -flushcache'

#textmate shortcut
alias mate='mate2'

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
source "`brew --prefix grc`/etc/grc.bashrc"
