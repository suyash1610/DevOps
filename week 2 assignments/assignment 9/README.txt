Operations : 

./TaskManager.sh -a "touch file1" manual
./TaskManager.sh -a "touch file1" scheduled
./TaskManager.sh -a "bash runningtask.sh" manual
./TaskManager.sh -l successful
./TaskManager.sh -l failed
./TaskManager.sh -l 
./TaskManager.sh -a "bash runningtask.sh" manual
./TaskManager.sh -d runningtask.sh
./TaskManager.sh -e runningtask.sh

-> TaskManager.sh

-> tasklog.txt