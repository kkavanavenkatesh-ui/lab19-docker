pipeline {
    agent {
        docker { 
            image 'maven:3.9-eclipse-temurin-17' 
        }
    }
    stages {
        stage('Build and Test') {
            steps {
                sh 'mvn clean test'
            }
        }
    }
    post {
        always {
            junit '**/target/surefire-reports/*.xml'
        }
    }
}
