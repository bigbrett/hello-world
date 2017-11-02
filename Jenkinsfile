pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'make'
                archiveArtifacts artifacts: 'hello', fingerprint: true
            }
        }
        stage('Test') {
            steps {
                sh 'make test'
            }
        }
}
