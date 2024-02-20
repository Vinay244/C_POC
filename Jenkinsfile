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
        stage('Upload into Nexus') {
    steps {
        script {
            sh 'echo "nexus123" | docker login -u admin --password-stdin http://51.120.52.71:8081/#admin/repository/repositories:Demo_repo'
            docker.withRegistry('http://51.120.52.71:8081/#admin/repository/repositories:Demo_repo', 'nexus123') {
                sh 'docker tag demo_image http://51.120.52.71:8081/#admin/repository/repositories:Demo_repo/demo_image:latest'
                sh 'docker push http://51.120.52.71:8081/#admin/repository/repositories:Demo_repo/demo_image:latest'
            }
        }
    }
}
}
}
