Answers: 

Repo used: https://github.com/OT-TRAINING/OT-MicroServices-Training.git
Used custom directory to perform all operations in the same workspace.

Step 1: Created job "clone_salary" to clone the repo : https://github.com/OT-TRAINING/OT-MicroServices-Training.git

Step 2: Created job "maven_clean" to perform clean operation.

-> maven_clean
mvn clean

Step 3: Created job "maven_validate" to perform validate operation.

-> maven_validate
mvn validate

Step 4: Created job "maven_compile" to perform compile operation.

-> maven_compile
mvn compile

Step 5: Created job "maven_test" to perform test operation.

-> maven_test
mvn test

Step 6: Created job "maven_package" to perform package operation.

-> maven_package
mvn package

Step 7: Created job "maven_verify" to perform verify operation.

-> maven_verify
mvn verify

Step 8: Created job "maven_install" to perform install operation.

-> maven_install
mvn install

Step 9: Created job "report_job" to perform code quality, code coverage and report generation operation.

-> report_job
mvn pmd:pmd
mvn findbugs:findbugs
mvn checkstyle:checkstyle
mvn cobertura:cobertura

Step 10: Used slack notification option in the post build action tab to initiate slack notifications.
