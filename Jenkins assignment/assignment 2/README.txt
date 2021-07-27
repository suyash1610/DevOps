Task 1
******

Step 1: I have created a jenkins job to carry out every git operation that needs to be performed.
Step 2: Custom workspace option has been used so that each job runs in the same workspace.

-> clone_repo

-> list_branch

git branch -a

-> create_branch

git branch ${BRANCH_NAME}

-> switch_branch_job

git checkout ${BRANCH_NAME}

-> create_file_job

touch ${FILE_NAME}

-> staging_job

git add ${FILE_NAME}

-> commit_job

git commit -m "${COMMIT_MESSAGE}"

-> branch_push_job
 
git push origin ${BRANCH_NAME}

-> pull_job

git pull 

-> merge_job

git merge ${BRANCH_NAME}

-> rebase_job

git rebase ${BRANCH_NAME}

Task 2
******

Step 1: Created another job "git_job" which runs the below script: 

#!/bin/bash

URL=$1
DAYS=$2

git clone ${URL}
echo ${URL} > url.txt
REPO_NAME=$(awk -F"/" '{print $5}' url.txt | cut -f1 -d.)
cd ${REPO_NAME}
git log --pretty=format:"%ad | %an | %ae | %s" --since=${DAYS}.days

Step 2: The script takes two arguments git "URL" and number of days "DAYS" for which the data is needed and displays the output in the form: 
        Date/Time, Author Name, Author Email, Commit Message, Valid Commit Message