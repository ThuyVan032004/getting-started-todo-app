pipeline {
    agent any
    
    stages {
        stage('Dev') {
            steps {
                git 'https://github.com/ThuyVan032004/getting-started-todo-app.git'

                script {
                    // Define the path to the Dockerfile
                    def dockerFilePath = '.'
                    // Ensure the build context is set correctly
                    // def buildContext = 'E:/Errands/app'
                    // Build the Docker image
                    def image = docker.build("vando2004/app-backend", "-f ${dockerFilePath}")
                    // Run the Docker container
                    docker.image("vando2004/app-backend").run('-d -p 3030:3030')
                }
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
