pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/ThuyVan032004/getting-started-todo-app.git'
            }
        }
        
        stage('Run Docker Container') {
            agent {
                docker {
                    image 'vando2004/jenkins-tutorial:latest'
                    reuseNode true
                }
            }
            steps {
                script {
                    docker.image('vando2004/jenkins-tutorial:latest').run('-p 9000:9000 -w .')
                }
            }
        }
    }
}
