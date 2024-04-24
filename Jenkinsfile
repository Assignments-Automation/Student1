pipeline {
  agent any

  stages {
    stage('Build Docker Image') {
      steps {
        sh 'docker build -t my-project-image .'
      }
    }
    stage('Run Tests in Docker') {
      steps {
        sh 'docker run my-project-image pytest'
      }
    }
  }
}
