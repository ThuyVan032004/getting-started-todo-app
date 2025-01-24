pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/ThuyVan032004/getting-started-todo-app.git'
            }
        }
        
        stage('Build and Run in Existing Container') {
            steps {
                script {
                    def buildContext = 'E:/Errands/app'
                    def image = docker.build('vando2004/jenkins-tutorial:latest', '-f Dockerfile .')
                    docker.image('vando2004/jenkins-tutorial:latest').inside {
                        image.run()
                    }
                }
            }
        }
    }
}