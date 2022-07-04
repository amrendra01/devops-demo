def img
pipeline {
    agent any
    
    environment {
        registry = 'amrendra01/hello-world'
        registryCredential = 'docker-hub-login'
        dockerImg = ''
        }
    
    stages {
        
        stage('build checkout') {
            steps {
                git branch: 'main',
                url:'https://github.com/amrendra01/devops-demo.git'
            }
        }
        stage('build image') {
            steps {
                script {
                    img = registry + ":${env.BUILD_ID}"
                    dockerImg = docker.build("${img}")
                }
            }
        }
        stage('test') {
            steps {
                sh "docker stop python-ci-cd"
                sh "docker rm python-ci-cd"
                sh "docker run -d --name python-ci-cd ${img}"
            }
        }
        stage('publish') {
            steps {
                script {
                    docker.withRegistry('', registryCredential) {
                        dockerImg.push()
                    }
                }
            }
        }
        stage('running in staging') {
            steps {
                script {
                    echo "running in staging"
                }
            }
        }
    }
}