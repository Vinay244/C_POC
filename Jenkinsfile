pipeline {
    agent any
    stages {
        stage('Build image') {
            steps {
                script {
                    sh 'docker build -t vinay .'
                }
            }
        }
        stage('Push image to ACR') {
            steps {
                script {
                    sh "docker login -u ${DOCKERHUB_USERNAME} -p ${DOCKERHUB_PASSWORD}"
                    sh 'docker tag vinay vinay4511/c_poc:latest'
                    sh 'docker push vinay4511/c_poc:latest'
                }
            }
        }
        stage('Store hello.c code in Azure Storage Container as a blob') {
              steps {
                  script {
                      sh './azure.sh'
                  }
              }
        }
    }
}
