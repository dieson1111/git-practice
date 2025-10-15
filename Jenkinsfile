nodejs('Nodejs') {
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
      when { branch 'main' }
      steps { sh 'echo "Deploy step here (e.g. upload, docker build/push...)"' }
    }
  }
  post {
    success { echo '✅ Build & Test Passed! Ready for Deploy.' }
    failure { echo '❌ Build/Test Failed.' }
  }
}