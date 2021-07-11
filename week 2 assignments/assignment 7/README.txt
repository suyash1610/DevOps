Answer: 

Step 1: Converted data files to csv files.
Step 2: Selecting admission number from class6A file 
        ADM_NO_ORGNL=$(cat ${CLASS_6A} | sed -n ""${num}"p" | awk -F, '{print $1}')
Step 3: Selecting admission number from googleform file 
        ADM_NO=$(cat ${GOOGLE_FORM} | sed -n ""${num}"p" | awk -F, '{print $5}')
Step 4: Selecting name from class6A file 
        NAME_ORGNL=$(cat ${CLASS_6A} | sed -n ""${num}"p" | awk -F, '{print $2}')
Step 5: Selecting name from googleform file 
        NAME=$(cat ${GOOGLE_FORM} | sed -n ""${num}"p" | awk -F, '{print $2}')
Step 6: Selecting email domain from googlefrom file 
        DOMAIN=$(cat ${GOOGLE_FORM} | sed -n ""${num}"p" | awk -F, '{print $1}' | awk -F@ '{print $2}')
Step 7: Applying condition 
        [ ${ADM_NO_ORGNL} -eq ${ADM_NO} ] && [ "${NAME_ORGNL}" == "${NAME}" ] ||
        [ ${ADM_NO_ORGNL} -eq ${ADM_NO} ] && [ "${DOMAIN}" == "dps.com" ] ||
        [ "${NAME_ORGNL}" == "${NAME}" ] && [ "${DOMAIN}" == "dps.com" ]
Step 8: Inserting the whole script inside an incremental for loop.
Step 9: Selecting score from googleform.
        SCORE=$(cat ${GOOGLE_FORM} | sed -n ""${num}"p" | awk -F, '{print $6}')
Step 10: Redirecting ${ADM_NO_ORGNL}, ${NAME_ORGNL}, ${SCORE} to output.txt file in case student satisfies two of the above conditions.
Step 11: Redirecting ${ADM_NO_ORGNL},${NAME_ORGNL},NA in case none of the conditions are satisfied.

Operations:

./updateMarks.sh class6A googleform output.txt

-> class6A

Admission Number,Name
1234,Varun Thakur
5254,Abhijeet Arora
6363,Saima Khan
7451,Rohit Gujral
8743,Jaspreet Singh
8535,Allan Mendonca
8206,Sumit Vyas
3473,Venkatesh Mannem
8534,Sabir Ghaus
4564,Abeer Gandhi

-> googleform

Email,Name,Class,Section,Admission Number,Score
1234@dps.com,Varin Thakur,6,A,1234,20/30
5254@dps.com,Abhijeet Arora,6,A,5254,15/30
6363@dps.com,Saima khan,6,A,6362,25/30
rgujral@gmail.com,Rohat Gujral,6,A,7452,22/30
8743@dps.com,Jaspreet Singh,6,A,8744,10/30
8535@dps.com,Allan Mendoca,6,A,8535,27/30
8206@dps.com,Sumit Vyas,6,A,8602,28/30
venkat123@outlook.com,Venkatesh Mannem,6,A,3473,19/30
8534@dps.com,Sabir Ghaus,6,A,8534,24/30
4564@dps.com,Abeer Gandhi,6,A,4564,5/30

-> output.txt

Admission Number,Name,Score
1234,Varun Thakur,20/30
5254,Abhijeet Arora,15/30
6363,Saima Khan,NA
7451,Rohit Gujral,NA
8743,Jaspreet Singh,10/30
8535,Allan Mendonca,27/30
8206,Sumit Vyas,28/30
3473,Venkatesh Mannem,NA
8534,Sabir Ghaus,24/30
4564,Abeer Gandhi,5/30