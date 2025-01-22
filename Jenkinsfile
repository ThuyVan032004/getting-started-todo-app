pipeline {
    agent {
        docker {
            image 'vando2004/app-backend:latest'
            args '-v C:/Users/admin/AppData/Local/Jenkins/.jenkins/workspace/cicd pipeline:/workspace -w /workspace'
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
