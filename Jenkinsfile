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
            steps {
		container('go') {
                    echo "$APP_NAME"
		    sh "jx --version"
		    sh "skaffold run -f skaffold.yaml"
		}
            }
        }
    }
    post {
        always { 
	    echo "I finished"
        }
    }
}

