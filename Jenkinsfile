pipeline {
    agent {dockerfile true}

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
		sh 'docker build -t javatestapp:v2 .'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
