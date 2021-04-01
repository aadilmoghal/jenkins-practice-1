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
        stage('Deploy SQL Pod') {
            steps {
                
                sh "aws eks --region eu-west-1 update-kubeconfig --name TaskCluster"
                sh "kubectl apply -f mysql.yaml"
                
            }
        }
    }
}
