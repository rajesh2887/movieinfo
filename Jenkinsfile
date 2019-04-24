pipeline {
  agent any
  stages {
    stage('clone') {
      steps {
        git(url: 'https://github.com/rajesh2887/movieinfo.git', branch: 'master', credentialsId: 'rajesh2887')
      }
    }
  }
}