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
}
}
}
