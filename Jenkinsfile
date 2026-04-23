pipeline {
    agent any
    stages {
        stage('Clone Code') {
            steps {
                // Use your actual repo
                git 'https://github.com/kkavanavenkatesh-ui/lab19-docker.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                // This command looks for the 'Dockerfile' you just created
                bat 'docker build -t my-app .'
            }
        }
        stage('Run Container') {
            steps {
                bat 'docker run -d my-app'
            }
        }
    }
}
