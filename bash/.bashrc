
# Set prompt
PS1="\[\e[1;34m\]\w\[\e[00m\] \[\e[1;30m\]\$ \[\e[00m\]"

# Envars
export HISTSIZE=3000
export HISTFILESIZE=3000
export EDITOR="vim"
export PROJECTS="$HOME/Projects/"
export DROPBOX="$HOME/Dropbox/"
export NOTES="$DROPBOX/Notes"

export PATH=$PATH:$HOME/.local/bin

# General aliases
alias downloads="ls -td $HOME/Downloads/* | head" # 10 recent downloads
alias ls="ls --color" # ls with colors
alias lsl="ls -la"

# Functions
mkd () { mkdir -p $1; cd $1; pwd; }

project-add () {
  echo -e "$1\t$2">>$PROJECTS/.projects
}
project-cd () {
  if [ -z "$1" ] && [ -z "$2" ]; then
    echo "Mention the project name."; return -1
  fi
  file=$(grep $1 $PROJECTS/.projects | awk '{ print $2 }')
  if [[ -d $file ]]; then
	  cd $file
  else
	  echo "Project doesn't exist."
  fi
}
alias pro=project-cd
