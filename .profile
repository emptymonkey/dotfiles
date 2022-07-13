
export PATH="$PATH:~/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/games"
export MANPATH="/opt/man:/usr/local/man:/usr/local/share/man:/usr/man:/usr/share/man:/usr/X11R6/man"

export TZ=UTC

if [ `id -u` -eq 0 ]
then
	export PS1="\n\e[38;5;123m\D{%F}\e[38;5;99mT\e[38;5;123m\D{%T}\e[38;5;99mZ\[\e[0m \e[38;5;1m\u@\h \e[38;5;219m\w \e[0m\n➤ "
	# These two fix the issue where displaying man pages on newer ubuntu machines is excrutiatingly slow, in some environments.
	export MANPATH="/usr/local/man:/usr/local/share/man:/usr/share/man"
	if [ ! -e  /usr/bin/gpreconv ]; then
		ln -s /usr/bin/preconv /usr/bin/gpreconv
	fi
else
	export PS1="\n\e[38;5;123m\D{%F}\e[38;5;99mT\e[38;5;123m\D{%T}\e[38;5;99mZ\[\e[0m \e[38;5;46m\u@\h \e[38;5;219m\w \e[0m\n➤ "
fi

alias vim='vim.nox'
alias vi='vim'
export VISUAL='vi'

alias passdump='openssl enc -d -aes-256-cbc -pbkdf2 -in '
alias ls='ls -a --color'
alias date="date -u -Iseconds"
alias stats='sort | uniq -c | sort -rn'

export CFLAGS='-std=c18 -Wall -Wextra -pedantic'
export CC=/usr/bin/clang

export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'

#export GIT_EDITOR="vi"
#export GIT_AUTHOR_NAME="emptymonkey"
#export GIT_COMMITTER_NAME="emptymonkey"
#export GIT_AUTHOR_EMAIL="pseudorandom@gmail.com"
#export GIT_COMMITTER_EMAIL="pseudorandom@gmail.com"
#set -o vi
