pipeline {
    agent any

    environment {
        // Define the GitHub credentials ID
        GITHUB_CREDENTIALS = credentials('github-token')
    }

    stages {
        stage('Checkout') {
            steps {
                // Clean workspace before checking out
                deleteDir()

                // Checkout the repository using GitHub credentials
                script {
                    withCredentials([usernamePassword(credentialsId: GITHUB_CREDENTIALS, usernameVariable: 'Vinay244', passwordVariable: 'Vinay@4511')]) {
                        checkout([$class: 'Git', 
                            branches: [[name: '*/main']], 
                            userRemoteConfigs: [[url: 'https://github.com/Vinay244/C_POC/']]])
                    }
                }
            }
        }

        // Add more stages for your build or deployment process
        stage('Build') {
            steps {
                // Your build steps go here
            }
        }

       
    }
}
