pipeline {
    agent {
        docker {
            image 'vando2004/app-backend:latest'
        }
    }
    
    stages {
        stage('Dev') {
            steps {
                git 'https://github.com/ThuyVan032004/getting-started-todo-app.git'
            }
        }
    }
    
    post {
        always {
            script {
                // Clean up Docker images (requires script approval)
                try {
                    docker.image("vando2004/app-backend").remove()
                } catch (Exception e) {
                    echo "Failed to remove Docker image: ${e.message}"
                }
            }
        }
    }
}
