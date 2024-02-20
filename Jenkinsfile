pipeline {
    agent any

    tools {
        git 'Default' // Use the default Git installation
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Vinay244/C_POC.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t vinayc .'
            }
        }
    }
}
