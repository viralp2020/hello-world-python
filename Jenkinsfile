pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    // Use Docker to run the Python script
                    docker.image('python:3.8-slim').inside {
                        sh 'python hello.py'
                    }
                }
            }
        }
        stage('Docker Build') {
            steps {
                script {
                    bat 'docker build -t littal_12@yahoo.com/hello-world-python .'
                }
            }
        }
        stage('Docker Push') {
            steps {
                withDockerRegistry([credentialsId: 'viralp1983', url: '']) {
                    script {
                        bat 'docker push littal_12@yahoo.com/hello-world-python'
                    }
                }
            }
        }
    }
}

