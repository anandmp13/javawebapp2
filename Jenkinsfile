pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                script {
              def userInput = input(
                id: 'userInput', message: 'Let\'s promote?', parameters: [
                [$class: 'TextParameterDefinition', defaultValue: 'latest', description: 'Environment', name: 'env']
                ])
              echo ("Env: "+userInput)
              sh "docker build -t anandmp13/javatestapp:" + userInput + " ."
              sh "docker login -u=anandmp13 -p=Anandmp@1994"
              sh "docker tag anandmp13/javatestapp:"+userInput+ " anandmp13/javatestapp:latest"
              sh 'docker push anandmp13/javatestapp'
	      sh 'kubectl update deployment app --image=anandmp13/javatestapp:latest'
              sh 'sudo kubectl expose deployment app --type=LoadBalancer --port=8080'
            }
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
