#!/bin/bash
if [ $# -eq 0 ]; then
  git add .
  read -p "Commit Message: " msg
  git commit -m "$msg"
  read -p "Push? " -n1
  git push
  exit 1
fi

function usage() {
  cat <<USAGE

  Usage: $0 [-c count] [-l last-commit] [-v verbose]

  Options:
    -c, --count:       total commit count of repository
    -l, --last-commit: show last commit message
    -v, --verbose:     extended visual and explaination

USAGE
  exit 1
}

for arg in "$@"; do 
  case $arg in
  -v | --verbose)
    git status -s
    echo -e -n "\nAdd all new files listed above?"
    read
    git add .
    read -p "Commit Message: " msg
    git commit -m "$msg"
    read -p "Push? " -n1
    git push
    ;;
  -c | --count)
    echo -n "Total commit count is "; git log --pretty=format:'' | wc -l
    ;;
  -l | --last-commit)
    git log -1
    ;;
  -h | --help)
    usage
    ;;
  esac
done
  