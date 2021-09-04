## Ansible Assignment 6
Must Do:

1. Create an ansible role to install nginx on Ubuntu OS.
2. Update above role to fail if OS of target host system is not Ubuntu with message "OS not supported".
3. Update above role to change the home page of Nginx to show Welcome message "Hello from Opstree"
4. Update above role to take name of Welcomer as input i.e. "Hello from Sandeep", if not provided it should still print "Hello from Opstree".
5. Update the welcome page of Nginx to display the System information along with Welcome message.
        - Hostname
        - IP addresses (public, private)
        - Operating System
        - RAM information (total, used, free)
        - Disk information (total,used, free)
        - Available Network Devices.
9. Update above role to take nginx listening port as input. Nginx should be reloaded only if Nginx port listening state changes.

Good to Do:

1. Create a public git repository by your name.
2. Add a file index.html in the repo, having a welcome message i.e. "Hello from Sandeep"
3. Update above role to remove default hosting
4. Create an ansible role to setup virtual hosting in target machine
    - The role will take "name" as parameter
    - In turn role should perform below operation, if the name is "sandy"
        - Creates a file /etc/nginx/sites-enabled/sandy.conf should be symbolic link to corresponding entry to sites-available
        - Creates a file /etc/nginx/sites-available/sandy.conf
        - The repository should be available at domain name "sandy.opstree.com" from your system.
        - Access logs should be available at /var/log/nginx/sandy/access.log
        - Error logs should be available at /var/log/nginx/sandy/error.log

#### Nginx index.html page 

![App Screenshot](index.PNG)