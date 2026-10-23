@echo off
cd /d "C:\Users\Mohammad Rafi Shaik\Videos"
git add -A
git commit -m "Auto-update notes: %date% %time%"
git push origin master
