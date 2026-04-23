pipeline {
    agent any 
    
    stages {
        stage('Docker Build') {
            agent {
                docker { 
                    image 'maven:3.9-eclipse-temurin-17'
                    // This creates a clean workspace inside the container
                    reuseNode true
                }
            }
            steps {
                // Run the build inside the container
                sh 'mvn clean test'
            }
        }
    }
    
    post {
        always {
            // Standard junit call without the extra script block
            junit '**/target/surefire-reports/*.xml'
        }
    }
}
