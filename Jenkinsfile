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
        post {
            always {
                echo "Donezo!"
            }
            success {
                mail to: s.wright@sarcos.com, subject 'JENKINS PIPELINE IS BAE';
            }
            failure {
                mail to: s.wright@sarcos.com, subject 'JENKINS PIPELINE IS SHITE'
            }
        } 
}
