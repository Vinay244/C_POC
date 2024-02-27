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
                      sh 'pwd'
                      sh "azcopy copy /var/lib/jenkins/workspace/pipeline-job/C_POC/hello.c 'https://vinaystorage108.blob.core.windows.net/newone/hello.c?sp=racwd&st=2024-02-26T18:46:16Z&se=2024-02-29T02:46:16Z&spr=https&sv=2022-11-02&sr=c&sig=6VAD77nHGhNo3UfhjaipPSDTsvm0JWz4M13rLrbe0%2Bk%3D'"
                  }
              }
        }
    }
}
