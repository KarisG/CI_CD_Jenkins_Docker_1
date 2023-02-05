pipeline {
    agent any
    stages {
	    stage('Pipeline working') {
	        steps {
			bat 'echo Hello World!'
		    }
	    }
	    stage('Docker run'){
	        steps{
			echo 'Build docker'
			bat 'docker build -t testapisecond .'
			echo 'Run docker'
			bat 'docker run -p 5001:5001 -d testapisecond'
	        }
	    }
	}
}

