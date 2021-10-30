
# Set prompt
PS1="\t \[\e[00m\]\[\e[1;36m\]\h \[\e[00m\]\W \[\e[2;37m\]\$ \[\e[00m\]" 

# Envars
export EDITOR="vim"
export PROJECTS="$HOME/Projects/"
export DROPBOX="$HOME/Dropbox/"
export NOTES="$DROPBOX/Notes"

# General aliases
alias downloads="ls -td $HOME/Downloads/* | head" # 10 recent downloads
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
