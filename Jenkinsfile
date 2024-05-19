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
                    sh 'docker build -t viralp1983/hello-world-python .'
                }
            }
        }
        stage('Docker Push') {
            steps {
                withDockerRegistry([ credentialsId: 'dockerhub', url: '' ]) {
                    script {
                        sh 'docker push viralp1983/hello-world-python'
                    }
                }
            }
        }
    }
}
