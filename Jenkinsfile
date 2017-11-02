pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'make'
            }
        }
        stage('Test') {
            steps {
                sh 'make test'
            }
        }
}
