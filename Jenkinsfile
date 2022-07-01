pipeline {
    agent any
    // agent {
    //     docker {
    //         image 'maven:3.8.1-adoptopenjdk-11'
    //         args '-v $HOME/.m2:/root/.m2'
    //     }
    // }
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('Build') {
            steps {
                echo 'building...'
                sh '''
                pip3 install -r requirements.txt
                '''
            }
        }
        stage('Test') {
            steps {
                echo 'testing...'
                sh '''
                python3 hello.py
                '''
            }
        }
        stage('Deliver') {
            steps {
                echo 'delivering...'
                sh '''
                echo 'doing delivery stuff...'
                '''
            }
        }
    }
}
