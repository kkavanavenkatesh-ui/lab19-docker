pipeline {
    agent any 
    
    stages {
        stage('Docker Build and Test') {
            agent {
                docker { 
                    image 'maven:3.9-eclipse-temurin-17'
                    // This is key for Windows path stability
                    reuseNode true
                }
            }
            steps {
                sh 'mvn clean test'
            }
        }
    }
    
    post {
        always {
            // Only run junit if a node is available
            node('built-in' || 'master') {
                junit '**/target/surefire-reports/*.xml'
            }
        }
    }
}
