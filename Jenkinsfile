pipeline {
    agent {
	label "jenkins-go"
    }
    stages {
        stage('Example') {
            steps {
		container("go") {
		    sh 'curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl'
  		    sh 'chmod +x ./kubectl && mv kubectl /usr/local/sbin'
		    sh 'kubectl version'
		}
            }
        }
    }
}

