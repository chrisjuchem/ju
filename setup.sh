#!/bin/bash

PURPLE='\033[0;35m'
RESET='\033[0m' # No Color


echo -e "${PURPLE}Beginning Setup...${RESET}"

set -e

JU_DIR=$HOME/ju

echo -e "${PURPLE}Installing rc files...${RESET}"
mkdir -p ~/.bashrc.d
echo source ${JU_DIR}/jurc > ~/.bashrc.d/ju


if [ ! -d ~/.bash-git-prompt ]; then
  echo -e "${PURPLE}Installing bash-git-prompt...${RESET}"
  git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
else
  echo -e "${PURPLE}bash-git-prompt already installed...${RESET}"
fi

echo -e "${PURPLE}Configuring git...${RESET}"
git config --global alias.cln "!f() { git fetch --prune; echo '\"git clnd\" will delete:'; git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}'; }; f"
git config --global alias.clnd "!f() { git fetch --prune; git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -D; }; f"
git config --global alias.defbranch "!git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@'"
git config --global alias.rbdef "!git rebase origin/\$(git defbranch) -i"
git config --global alias.home "!git checkout \$(git defbranch) && git pull"
git config --global alias.tree "log --oneline --all --graph --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(red)- %an%C(reset)%C(bold yellow)%d%C(reset)'"
git config --global rebase.autosquash true
git config --global grep.lineNumber true
git config --global core.excludesFile ${JU_DIR}/git/.gitignore-global
git config --global core.hooksPath ${JU_DIR}/git/hooks-global

echo -e "${PURPLE}Done!${RESET}"
