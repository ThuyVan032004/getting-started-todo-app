pipeline {
    agent {
        docker {
            image {
                'vando2004/app-backend:latest'
            }
        }
    }
    
    stages {
        stage('Dev') {
            steps {
                git 'https://github.com/ThuyVan032004/getting-started-todo-app.git'
            }
        }
    }
}
