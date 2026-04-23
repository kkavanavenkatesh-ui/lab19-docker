pipeline {
    agent any
    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/kkavanavenkatesh-ui/lab19-docker.git'
            }
        }
        stage('Build Docker Image') {
            steps {
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
