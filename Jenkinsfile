pipeline {
    agent { docker 'golang:1.10.1-alpine3.7' } 
    stages {
        stage('Example Build') {
            steps {
                sh 'go version'
            }
        }
    }
}

