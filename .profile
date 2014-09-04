export EDITOR=/usr/bin/pico

alias profile='pico ~/.profile'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ..='cd ..'
alias ...='cd ../..'

alias wget='echo "THIS WGET IS AN ALIAS" && curl -O'


alias fsize='du -sch * | sort -h'

alias ls='ls -lGh'

alias here='pushd .'
alias there='popd'

alias fist='finger -M'

alias cls='clear'

alias dir='ls -Lla|grep ^d'

alias r='fc -s'

alias rmdss='find . -name "*.DS_Store" -type f -delete'

alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour

alias loc='cloc'

alias gs="git status"
alias gc="git commit"
alias ga="git add --all"
alias gpd="git push origin dev"
alias gpu="git push origin master"
alias gpb="git push bb"
alias gd="git diff"
alias gdc="git diff --cached"
alias gdh="git diff HEAD~"
alias lg="git lg"

alias ds="dirs -v"

alias lb="find /"


function mcd()
{
  test -e $1 || mkdir $1; cd $1;
}

alias tags="git log --date-order --graph --tags --simplify-by-decoration"

alias pst="curl -F 'sprunge=<-' http://sprunge.us"

encode () {
  echo "$1" | openssl base64 ; echo
}

function fuck() {
  killall -9 $2;
  if [ $? == 0 ]
  then
    echo
    echo " (╯°□°）╯︵$(echo $2|flip &2>/dev/null)"
    echo
  fi
}
