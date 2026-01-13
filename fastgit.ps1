git add .
$msg = Read-Host "Commit Message: "
git commit -m "$msg"
Read-Host "Push?"
git push