pipeline {
  agent any
  tools {
    nodejs "Nodejs"
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
      steps { 
        echo 'Starting application...'
        sh 'npm run start' 
      }
    }
  }
  post {
    success { echo '✅ Build & Test Passed! Ready for Deploy.' }
    failure { echo '❌ Build/Test Failed.' }
  }
}