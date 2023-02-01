pipeline {
    agent any
    stages {
	    stage('Build docker image') {
	        steps {
	            script{
	                docker.build()
	            }
		    }
	    }
	    stage('Docker run'){
	        steps{
	            script{
	                docker.image()
	            }
	        }
	    }
}
