pipeline {
    agent {
        docker { 
            image 'maven:3.9-eclipse-temurin-17'
            // This line fixes the "invalid working directory" error on Windows
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }
    stages {
        stage('Build and Test') {
            steps {
                // We use sh because the Maven image is Linux
                sh 'mvn clean test'
            }
        }
    }
    post {
        always {
            // We only run junit if the folder actually exists
            script {
                if (fileExists('target/surefire-reports')) {
                    junit '**/target/surefire-reports/*.xml'
                }
            }
        }
    }
}
