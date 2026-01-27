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

  Usage: $0 [-c count] [-v verbose]

  Options:
    -c, --count:   total commit count of repository 
    -v, --verbose: extended visual and explaination

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
  -h | --help)
    usage
    ;;
  esac
done
  