pipeline {
    agent {dockerfile true}

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
		sh 'sudo docker build -t javatestapp:v1 .'
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
