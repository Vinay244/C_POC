pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                script {
                    git branch: 'main', url: 'https://github.com/Vinay244/C_POC.git' 
                }
            }
        }
        stage('Build image'){
        steps{
            script {
                sh 'docker build -t vinay .'
    }
}
}
        stage('Push image to ACR'){
        steps{
            script{
                withCredentials([string(credentialsId: 'DOCKERHUB_USERNAME', variable: 'DOCKERHUB_USERNAME'), string(credentialsId: 'DOCKERHUB_PASSWORD', variable: 'DOCKERHUB_PASSWORD')]) {
                        sh "docker login -u ${DOCKERHUB_USERNAME} -p ${DOCKERHUB_PASSWORD}"
                        //sh "docker login -u vinay4511 -p vinayd@4511"
                        sh 'docker tag vinay vinay4511/c_poc:latest'
                        sh 'docker push vinay4511/c_poc:latest'
               }
        }
        }
        
}
}
}
