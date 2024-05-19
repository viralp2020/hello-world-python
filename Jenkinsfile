pipeline {
    agent any

    environment {
        DOCKER_WORKSPACE = sh(script: 'echo $WORKSPACE | sed "s/^\\([a-zA-Z]\\):/\\/\\1/" | sed "s/\\\\/\\//g"', returnStdout: true).trim()
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
                withDockerRegistry([credentialsId: 'viralp1983', url: '']) {
                    script {
                        sh 'docker push viralp1983/hello-world-python'
                    }
                }
            }
        }
    }
}

