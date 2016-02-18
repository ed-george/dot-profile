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
#Requires coreutils 7.5+ - can access on OSX via Homebrew  
#Use sort instead of gsort if non-OSX
alias fsize='du -hs * | gsort -h'
#Alternative:
#alias fsize='du -sch *'

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

#Get local IP
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'

#Make directory and move into it
function mcd()
{
  test -e "$1" || mkdir "$1"; cd "$1";
}

#Paste to internet
alias pst="curl -F 'sprunge=<-' http://sprunge.us"

#Generate .gitignore files using gi <platform or language> or gi list - see https://www.gitignore.io/docs
function gi() { curl -L -s https://www.gitignore.io/api/\$@ ;}

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

#Upload to transfer.sh
#See http://transfer.sh for more info
transfer() { 
    curl --upload-file ./$1 https://transfer.sh/$1;
}


#Colorful Console Screensaver
#Source: http://www.climagic.org/coolstuff/cursor-tricks.html
function ss(){
	j=0;
	a=1;
	x=1;
	y=1;
	xd=1;
	yd=1;
	while true;
	do for i in {1..2000} ;
	 do if [[ $x == $LINES || $x == 0 ]];
	 then xd=$(( $xd *-1 )) ;
	 fi ;
	 if [[ $y == $COLUMNS || $y == 0 ]];
	 then yd=$(( $yd * -1 )) ;
	 fi ;
	 x=$(( $x + $xd ));
	 y=$(( $y + $yd ));
	 printf "\33[%s;%sH\33[48;5;%sm . \33[0m" $x $y $(( $a % 8 + 16 + $j % 223 )) ;
	 a=$(( $a + 1 )) ;
	 done ;
	 x=$(( x%$COLUMNS + 1 )) ;
	 j=$(( $j + 8 )) ;
	done
}

#Local weather report from wttr.in
alias weather='curl -4 http://wttr\.in/'
