def img
pipeline {
    agent any
    
    environment {
        registry = 'amrendra01/hello'
        registryCredential = 'docker-hub-login'
        dockerImg = ''
        }
    
    stages {
        
        stage('Build Checkout') {
            steps {
                git branch: 'main',
                url:'https://github.com/amrendra01/devops-demo.git'
            }
        }
        stage('Build Artifact') {
            steps {
                script {
                    img = registry + ":${env.BUILD_ID}"
                    dockerImg = docker.build("${img}")
                }
            }
        }
        stage('Publish Build') {
            steps {
                script {
                    docker.withRegistry('', registryCredential) {
                        dockerImg.push()
                    }
                }
            }
        }
        stage('Deploy Staging') {
            steps {
                sh "docker stop python-ci-cd"
                sh "docker rm python-ci-cd"
                sh "docker run -d --name python-ci-cd ${img}"
            }
        }
    }
}