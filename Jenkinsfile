pipeline {
    agent any
    parameters {
        string(name: 'Greeting', defaultValue: 'Hello', description: 'How should I greet the world?')
        string(name: 'Wang', defaultValue: 'Hi Wang', description: 'How should I greet the world?')
    }
    stages {
        stage('Example') {
            steps {
                echo "${params.Greeting} World!"
                echo "${params.Wang}, how are you!"
            }
        }
    }
    post {
        always {
	    mail to: so@idcf.jp, subject: 'The Pipeline finished :('
        }
    }
}

