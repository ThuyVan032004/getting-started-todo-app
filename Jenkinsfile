pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/ThuyVan032004/getting-started-todo-app.git'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    def buildContext = '.'
                    def image = docker.build('vando2004/jenkins-tutorial:latest', '-f Dockerfile ' + buildContext)
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker-compose down'
                    sh 'docker-compose up -d'
                }
            }
        }
    }
}
