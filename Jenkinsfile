pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'master', url: 'https://github.com/Nikhil122004/Devops1.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t devops1_image .'
            }
        }

        stage('Deploy using Docker Compose') {
            steps {
                bat '''
                docker-compose down || exit 0
                docker-compose up -d --build
                '''
            }
        }
    }
}