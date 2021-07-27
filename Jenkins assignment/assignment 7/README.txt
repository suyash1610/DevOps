STEPS
*****

Step 1: Created 9 dummy jobs that will print their jobname, build number on execution.

Below is the script used in the job: 

pipeline {
    agent { label 'master' }
    options {
            buildDiscarder logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '2')
    }
    stages {
        stage('Displaying Job name and Build number') {
            steps {
                echo "Job Name is: ${env.JOB_NAME}"
                echo "Build Number is: ${env.BUILD_NUMBER}"
            }
        }
    }
}

Below are the job names: 

dev-1
dev-2
dev-3
test-1
test-2
test-3
devops-1
devops-2
devops-3

Step 2: Created three views developer-view, devops-view and testing-view. Assigned the developer jobs to developer-view, tester jobs to testing-view and 
        devops jobs to devops-view.

Step 3: Created 7 users 2 for developer team, 2 for testing team, 2 for devops team and one admin(considered myself as admin). Below are the users: 

developer-1 
developer-2
tester-1
tester-2
devops-1
devops-2

Step 4: In "Manage jenkins >> Configure Global Security", enabled Project-based matrix authorization strategy. Added all the users to it and gave the required 
        permission

Step 5: Configured the dev, test and devops jobs, added the users to every job with their respective permissions.