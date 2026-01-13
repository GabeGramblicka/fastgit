#!/bin/bash
git add .
read -p "Commit Message: " msg
git commit -m "$msg"
read -p "Push? " -n1
git push