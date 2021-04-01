pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy SQL') {
            steps {
                
                sh ""
                sh "kubectl apply -f mysql.yaml"
                
            }
        }
    }
}
