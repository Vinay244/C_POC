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
                    }
                }
            }
        }
}
