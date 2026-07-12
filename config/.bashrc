#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# PROMPT
# a function that, if we are in a git folder, print the current branch, otherwise doesn't print nothing
branch() {
  if [ -d .git ]; then
    echo -n " $(git branch 2>/dev/null | grep '^*' | colrm 1 2)"
    # echo -n " $(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)"
  fi
}

# PS1='\[\e[38;5;28m\]\u\[\e[0m\]  \[\e[38;5;36;3m\]\h\[\e[0m\]:\[\e[1m\]$(ip route get 1.1.1.1 | awk -F"src " '"'"'NR == 1{ split($2, a," ");print a[1]}'"'"') \[\e[0;38;5;68m\]\w\n\[\e[0m\]╚═[\[\e[2m\]$(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)\[\e[0m\]]═\$ '
PS1='\[\e[38;5;28m\]\u\[\e[0m\] \[\e[38;5;36;3m\]\h\[\e[0m\]:\[\e[1m\]$(ip route get 1.1.1.1 | awk -F"src " '"'"'NR == 1{ split($2, a," ");print a[1]}'"'"') \[\e[0;38;5;68m\]\w\n\[\e[0m\]╚═[\[\e[2m\]$(branch)\[\e[0m\]]═ '

#       