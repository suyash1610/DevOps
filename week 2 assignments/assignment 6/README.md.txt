Task 1:

Step 1: Created a file template.txt with variable fname and topic.
Step 2: Made some entries in template.txt file like below : 
        {{fname}} is trainer of {{topic}}
Step 3: Created script templateEngine.sh.
Step 4: In the script, defined a variable TEMP_FILE, which will be equal to template.txt file provided as the first 
        argument while running the script.
Step 5: Used for loop to fetch key value pairs as an argument.
Step 6: Used case expression inside for loop to create two variables fname and topic and assigned them the values of 
        the key value pair provided as argument.
Step 7: Used sed command to replace fname and topic in the template.txt file with the value of the fname and topic variable
        defined in the for loop.
Note : The script is only replacing fname and topic from template.txt file as asked in the task. The key provided as
       argument should always be fname and topic

-> template.txt

{{fname}} is trainer of {{topic}}
{{fname}} is trainer of {{topic}}

-> Operations: 

./templateEngine.sh template.txt fname=sandeep topic=linux
./templateEngine.sh template.txt fname=adeel topic=git

-> template.txt  (output)

{{sandeep} is trainer of {{linux}}
{{adeel}} is trainer of {{git}}

Task 2:

Step 1: Defined the first argument in the ACTION variable and the second argument (filename) in the FILE variable.
Step 2: Used case ecpression to map value of ACTION variable to different operations which will be provided as an 
        argument.
Step 3: texteditor.txt is the file in which all the operations are being performed.

-> texteditor.txt

root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin

Operations:

./otTextEditor.sh addLineTop texteditor.txt "line at beginning"
./otTextEditor.sh addLineBottom texteditor.txt "line at end"
./otTextEditor.sh addLineAt texteditor.txt linenumber "line at a linenumber"
./otTextEditor.sh updateFirstWord texteditor.txt replaced_word replacing_word
./otTextEditor.sh updateAllWords texteditor.txt replaced_word replacing_word
./otTextEditor.sh insertWord texteditor.txt word1 word2 <word_to_be_inserted
./otTextEditor.sh deleteLine texteditor.txt linenumber
./otTextEditor.sh deleteLineWord texteditor.txt word