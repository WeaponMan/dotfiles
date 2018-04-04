#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
source /usr/share/git/completion/git-prompt.sh

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi

export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
export ANDROID_HOME=$HOME/android-sdk
export EDITOR=/usr/bin/nano
export STEAM_RUNTIME=0
export GPG_TTY=$(tty)

