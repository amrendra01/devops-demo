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
                echo 'doing build stuff...'
                '''
            }
        }
        stage('Test') {
            steps {
                echo 'testing...'
                sh '''
                echo 'doing test stuff...'
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
