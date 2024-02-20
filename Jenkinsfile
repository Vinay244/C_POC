pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                script {
                    git branch: 'main', url: 'https://github.com/ivarreddy059/Project_EX.git' 
                }
            }
        }
        stage('Build image'){
        steps{
            script {
                sh 'docker build -t test .'
    }
}
}
}
}
}
