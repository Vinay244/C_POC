pipeline {
    agent any

    tools {
        git 'Default' // Use the default Git installation
    }

    stages {
        stage('Checkout') {
            steps {
                //git 'https://github.com/Vinay244/C_POC.git'
                checkout ([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[credentialsId: 'Github-token', url: 'https://github.com/Vinay244/C_POC.git']]])

}
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t vinayc .'
            }
        }
    }
}
