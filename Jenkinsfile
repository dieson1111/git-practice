pipeline {
    agent any
    tools {
        nodejs 'Nodejs'
    }
    stages {
        stage('Install') {
            steps { sh 'npm ci' }
        }
        stage('Test') {
            steps { sh 'npm test' }
        }
        stage('Build') {
            script {
                docker.build('my-local-app:latest')
            }
        }
        stage('Deploy') {
            steps { sh 'echo "Deploy step here (e.g. upload, docker build/push...)"' }
        }
    }
    post {
        success { echo '✅ Build & Test Passed! Ready for Deploy.' }
        failure { echo '❌ Build/Test Failed.' }
    }
}
