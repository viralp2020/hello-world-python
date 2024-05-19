pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    bat 'python hello.py'
                }
            }
        }
        stage('Docker Build') {
            steps {
                script {
                    bat 'docker build -t viralp1983/hello-world-python .'
                }
            }
        }
        stage('Docker Push') {
            steps {
                withDockerRegistry([credentialsId: 'viralp1983', url: '']) {
                    script {
                        bat 'docker push viralp1983/hello-world-python'
                    }
                }
            }
        }
    }
}

