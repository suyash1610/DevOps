Answer: 

github url used: https://github.com/opstree/spring3hibernate.git

Step 1: Created upstream job "build_job" with maven command "mvn clean package" to run mvane build cycle phases, clean, validate, compile, test, and package.
Step 3: Above job will generate a war file "Spring3HibernateApp.war"
Step 4: Installed nexus on a separate machine.
Step 5: Crteated a repository called maven-release
Step 4: Created downstream job "deploy_job" to deploy the artifact to nexus.
Step 5: In the add build step, used "nexus artifact uploader" plugin to upload the artifact. 


          