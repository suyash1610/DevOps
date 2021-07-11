Answer :

Step 1: Took the default value of the variable.
Step 2: Used getopts to parse the arguments and store it in the variables. Below are the variables used :
        ACTION
        SERVER_ALIAS
        SERVER_HOST
        SSH_USER
        PORT
        SSH_KEY_PATH
Step 3: Created a function called addserverdetails to save the details to a file # otssh_config
Step 4: Used case expression to add the server details by calling in the addserverdetails function and providing the arguments.
Step 5: created another function called listserverdetails to list the server details. If only -l flag is used then available ssh-servers will be listed, if 
        -d flag is used with -l flag then available ssh-servers full details will be listed.
Step 6: Modified the case expression to list ssh-servers details by calling in the listserverdetails function and passing the arguments.
Step 7: Created another function called removeserverdetails to remove a particular server details. Using the -r flag for remove and the -n flag to provide the 
        server-alias that needs to be removed.
Step 8: Modified the case expression again to remove a particular ssh-server details by calling the removeserverdetails function and providing the arguments.
Step 9: Created another function called modifyserverdetails to modify a particular server details. Using the -m flag to modify and other flags to provide server 
        details we can modify server details. The function takes SERVER_ALIAS as a reference, first deletes the records associated with that alias, and then 
        add the new records.
Step 10: Modified the case expression to modify a particular ssh-server details by calling in the modifyserverdetails function. 
         Note : while modifying the server details make sure to not change the SERVER_ALIAS, as the function is modifying the records while searching for that 
         particular alias. So, changing the SERVER_ALIAS will give an error.

Options:

-a : add
-l : list
-d : describe
-r : remove
-m : modify
-n : server_alias
-h : server_host
-u : ssh_user
-p : port
-i : key_path

Operations: 

- Add ssh connection
./otssh.sh -a -n mysql-server -h mysql.opstree.com -u mukul
./otssh.sh -a -n suyash-server -h suyash.prod.com -u suyash -p 2022
./otssh.sh -a -n yash-server -h yash.test.com -u yash -p 2022 -i ~/.ssh/server3.pem

- List ssh connection
./otssh.sh -l
mysql-server
suyash-server
yash-server
./otssh.sh -l -d 
mysql-server: ssh -i ~/.ssh/id_rsa -p 22 mukul@mysql.opstree.com
suyash-server : ssh -i ~/.ssh/id_rsa -p 2022 suyash@suyash.prod.com
yash-server : ssh -i ~/.ssh/id_rsa -p 2022 yash@yash.test.com

- Remove ssh connection
./otssh.sh -r -n mysql-server
./otssh.sh -r -n suyash-server
./otssh.sh -r -n yash-server

- Modify ssh connection
./otssh.sh -m -n mysql-server -h mysql.otmiddleware.com -u sajal
./otssh.sh -m -n suyash-server -h suyash.prod.com -u suyash -p 22 -i ~/.ssh/server3.pem
./otssh.sh -m -n yash-server -h yash.test.com -u yash 