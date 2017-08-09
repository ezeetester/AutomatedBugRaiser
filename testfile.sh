mkdir -p testfolder
cd testfolder
touch docfile.txt
uname -a >> docfile.txt
firefox -v >> docfile.txt
byzanz-record -d 30 --delay=5 /home/prasad/GitAutomatedBugRaiser/testfolder/byzanz-testthree.webm

