pipeline {
    agent {
        node {
            label 'jenkins-agent-goes-here'
        }
    }
    triggers {
        pollSCM '*/5 * * * *'
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
