Write-Output "=== Step 1: Git Status ==="
git status
Write-Output ""
Write-Output "=== Step 1: Git Remote -v ==="
git remote -v
Write-Output ""
Write-Output "=== Step 1: Git Log -3 ==="
git log -3 --oneline
Write-Output ""
Write-Output "=== Step 2: Git Add All ==="
git add .
Write-Output ""
Write-Output "=== Step 2: Git Status After Add ==="
git status
Write-Output ""
Write-Output "=== Step 3: Git Commit ==="
git commit -F _commit_msg.txt
Write-Output ""
Write-Output "=== Step 4: Git Push ==="
git push
Write-Output ""
Write-Output "=== Step 4: Git Push All ==="
git push --all
