pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/ThuyVan032004/getting-started-todo-app.git'
            }
        }
        
        stage('Dev') {
            agent {
                docker {
                    image 'vando2004/jenkins-tutorial:latest'
                    reuseNode true
                }
            }
        }
        
        stage('Build and Run in Existing Container') {
            steps {
                script {
                    def image = docker.build('vando2004/jenkins-tutorial:latest')
                    docker.image('vando2004/jenkins-tutorial:latest').inside {
                        image.run()
                    }
                }
            }
        }
    }
}