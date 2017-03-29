mkdir -p testfolder
cd testfolder
touch docfile.txt
uname -a >> docfile.txt
firefox -v >> docfile.txt
vokoscreen
xdotool search --name "vokoscreen"
xdotool windowactivate 62914573 
xdotool key "Ctrl+Shift+F10"


