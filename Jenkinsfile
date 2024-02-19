pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Check out your source code from version control (e.g., Git)
                git 'https://github.com/Vinay244/C_POC.git'
            }
        }

        stage('Build and Push Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    sh 'docker build -t vinayc .'

                    // Push the Docker image to Docker Hub
                    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
                        docker.image('yourusername/hello-c').push()
                    }
                }
            }
        }
    }
}

