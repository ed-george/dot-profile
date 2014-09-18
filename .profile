#================================================================================
# .profile
#
# A collection of my best aliases - Feel free to add to them
#
# by Ed George <esm@hotmail.co.uk> 2014
#================================================================================

#Change default terminal editor (Disclaimer: I cannot use vim)
export EDITOR=/usr/bin/pico

#Quickly edit this alias list
alias profile='pico ~/.profile'

#Prompt for confirmation on potentially harmful operations
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

#Quickly move down directories
alias ..='cd ..'
alias ...='cd ../..'

#Get file sizes for current dir
alias fsize='du -sch *'

#Add more to default ls
alias ls='ls -lGh'

#Quickly jump between directories using directory stack
alias here='pushd .'
alias there='popd'

#No comment
alias fist='finger -M'

#Windows like functions
alias cls='clear'
alias dir='ls -Lla|grep ^d'

#Execute last command
alias r='fc -s'

#Remove .DS_Store files from directory
alias rmdss='find . -name "*.DS_Store" -type f -delete'

#Add color to results of grep commands
alias grep='grep --color'
alias egrep='egrep --color=auto'              
alias fgrep='fgrep --color=auto'             

#Count lines of code
#http://sourceforge.net/projects/cloc/files/
alias loc='cloc'

#Git Aliases
alias gs="git status"
alias gc="git commit"
alias ga="git add --all"
alias gpd="git push origin dev"
alias gpu="git push origin master"
alias gpb="git push bb"
alias gd="git diff"
alias gdc="git diff --cached"
alias gdh="git diff HEAD~"
alias tags="git log --date-order --graph --tags --simplify-by-decoration"

#See: https://coderwall.com/p/euwpig
alias lg="git lg"

#Show directory stack
alias ds="dirs -v"

#LOOK BUSY!
alias lb="find /"

#Make directory and move into it
function mcd()
{
  test -e $1 || mkdir $1; cd $1;
}

#Paste to internet
alias pst="curl -F 'sprunge=<-' http://sprunge.us"

#Kill a program!
#See: https://gist.github.com/namuol/9122237
function fuck() {
  killall -9 $2;
  if [ $? == 0 ]
  then
    echo
    echo " (╯°□°）╯︵$(echo $2|flip &2>/dev/null)"
    echo
  fi
}
