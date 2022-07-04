def img
pipeline {
    agent any
    
    environment {
        registry = 'amrendra01/hello-world'
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
        stage('Build') {
            steps {
                script {
                    img = registry + ":${env.BUILD_ID}"
                    dockerImg = docker.build("${img}")
                }
            }
        }
        stage('Test') {
            steps {
                sh "docker stop python-ci-cd"
                sh "docker rm python-ci-cd"
                sh "docker run -d --name python-ci-cd ${img}"
            }
        }
        stage('Publish Build') {
            steps {
                script {
                    withDockerRegistry('', registryCredential) {
                        dockerImg.push()
                    }
                }
            }
        }
        stage('Deploy Staging') {
            steps {
                script {
                    echo "running in staging"
                }
            }
        }
    }
}