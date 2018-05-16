pipeline {
    agent {
        label "jenkins-go"
    }
    environment {
      ORG               = 'REPLACE_ME_ORG'
      APP_NAME          = 'REPLACE_ME_APP_NAME'
      GIT_PROVIDER      = 'REPLACE_ME_GIT_PROVIDER'
      CHARTMUSEUM_CREDS = credentials('jenkins-x-chartmuseum')
    }
    stages {
        stage('Example Build') {
	    environment { 
                DEBUG_FLAGS = '-g'
            }
            steps {
		container('go') {
                    echo "$APP_NAME"
		    sh "jx --version"
#		    sh "skaffold run -f skaffold.yaml"
		    sh 'printenv'
		}
            }
        }
    }
    post {
        always { 
	    echo "Always."
        }
        success {
            echo 'I succeeeded!'
        }
        unstable {
            echo 'I am unstable :/'
        }
        failure {
            echo 'I failed :('
        }

    }
}

