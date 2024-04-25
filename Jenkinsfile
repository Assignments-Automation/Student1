pipeline {
  agent any  // Or specify a specific agent if needed

  triggers {
    github( 
      branches: "", 
      events: ["push"]
    )
  }

  stages {
    stage('Build and Test') {
      steps {
        script {
          
          sh 'docker build -t my-project-image . --build-arg BUILD_STAGE=builder'
          sh 'docker build -t my-project-image . --build-arg BUILD_STAGE=runner'  

          // Run the container from the runner stage
          def containerId = sh(script: 'docker run -d my-project-image', returnStdout: true).trim()

          // Run tests using pytest within the container
          sh "docker exec ${containerId} pytest test_palindrome.py"

          
          sh "docker wait ${containerId} || echo 'Tests failed (non-zero exit code)'"

          // Stop and remove the container
          sh 'docker stop ${containerId}'
          sh 'docker rm ${containerId}'


          sh "docker cp ${containerId}:/testing.xml testing.xml"
        }
      }
    }
    
  }
}//
