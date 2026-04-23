
(
echo pipeline {
echo     agent {
echo         docker { image 'maven:3.9-eclipse-temurin-17' }
echo     }
echo     stages {
echo         stage('Build ^& Test') {
echo             steps {
echo                 sh 'mvn clean test'
echo             }
echo         }
echo     }
echo     post {
echo         always {
echo             junit '**/target/surefire-reports/*.xml'
echo         }
echo     }
echo }
) 

