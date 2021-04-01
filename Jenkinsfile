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
                
                sh "aws eks --region eu-west-1 update-kubeconfig --name DemoCluster"
                sh "kubectl apply -f mysql.yaml"
                
            }
        }
    }
}
