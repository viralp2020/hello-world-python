pipeline {
    agent {
        docker { image 'python:3.8-slim' }
    }
    stages {
        stage('Build') {
            steps {
                script {
                    sh 'python hello.py'
                }
            }
        }
        stage('Docker Build') {
            steps {
                script {
                    sh 'docker build -t your-dockerhub-username/hello-world-python .'
                }
            }
        }
        stage('Docker Push') {
            steps {
                withDockerRegistry([ credentialsId: 'dockerhub', url: '' ]) {
                    script {
                        sh 'docker push your-dockerhub-username/hello-world-python'
                    }
                }
            }
        }
    }
}
