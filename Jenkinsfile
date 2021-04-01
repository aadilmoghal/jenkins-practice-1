pipeline {
    agent any

    stages {
        stage('Create cluster') {
            steps {
                echo 'Building..'
            }
        }
        stage('Deploy SQL pod') {
            steps {
                sh "kubectl delete -f mysql || echo 'No pods'"
                sh "aws eks --region eu-west-2 update-kubeconfig --name TaskCluster"
                sh "kubectl apply -f mysql.yaml"
                
            }
        }
    }
}
