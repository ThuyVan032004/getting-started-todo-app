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
                    bat 'docker build -t vando2004/jenkins-tutorial:latest -f Dockerfile ' + buildContext
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                script {
                    bat 'docker stop cicd-container || true'
                    bat 'docker rm cicd-container || true'
                    bat 'docker run -d -p 9000:9000 --name cicd-container vando2004/jenkins-tutorial:latest'
                }
            }
        }
    }
}
