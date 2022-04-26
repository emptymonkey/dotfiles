
export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin

if [ `id -u` -eq 0 ]
then
	export PS1="\n\e[38;5;123m\t\[\e[0m \e[38;5;1m\u@\h \e[38;5;219m\w \e[0m\n➤ "
else
	export PS1="\n\e[38;5;123m\t\[\e[0m \e[38;5;46m\u@\h \e[38;5;219m\w \e[0m\n➤ "
fi

alias vim='vim.nox'
alias vi='vim'
export VISUAL='vi'

#export GIT_EDITOR="vi"
#export GIT_AUTHOR_NAME="emptymonkey"
#export GIT_COMMITTER_NAME="emptymonkey"
#export GIT_AUTHOR_EMAIL="pseudorandom@gmail.com"
#export GIT_COMMITTER_EMAIL="pseudorandom@gmail.com"

alias passdump='openssl enc -d -aes-256-cbc -pbkdf2 -in '
alias ls='ls -a --color'
alias date="date -I'seconds' | sed 's/+00:00*$/Z/'"
alias stats='sort | uniq -c | sort -rn'

set -o vi
