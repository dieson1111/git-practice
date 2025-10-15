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
            steps { sh 'npm run build' }
        }
        stage('Deploy') {
            // steps { sh 'echo "Deploy step here (e.g. upload, docker build/push...)"' }
            steps { sh 'docker run -d --name git-practice-instance -p 3000:3000 git-practice:latest' }
        }
    }
    post {
        success { echo '✅ Build & Test Passed! Ready for Deploy.' }
        failure { echo '❌ Build/Test Failed.' }
    }
}
