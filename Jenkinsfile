pipeline {
    agent any
    stages {
	    stage('Build docker image') {
	        steps {
	            script{
			bat 'Hello World!'
	                docker.build('jspquoimettre')
	            }
		    }
	    }
	    stage('Docker run'){
	        steps{
	            script{
	                docker.image('jspquoimettre')
	            }
	        }
	    }
}

	
