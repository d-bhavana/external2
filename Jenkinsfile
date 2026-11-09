pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t external:latest .'
            }
        }

        stage('Docker Login') {
            steps {
                bat 'docker login -u dbhavana -p 9949422313'
            }
        }

        stage('Tag Image') {
            steps {
                bat 'docker tag external:latest dbhavana:external:latest'
                bat 'docker push dbhavana/external:latest'
        }
        }
        stage('Deploy to Kubernetes') {
            steps {
                bat 'kubectl apply - f deployment.yaml'
                bat 'kubectl apply - f service.yaml'
            }
        }
    }
}
