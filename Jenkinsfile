pipeline {
  // ... other stages and configuration

  stages {
    stage('Build and Test') {
      steps {
        script {
          // Build the Docker image with multi-stage build
          sh 'docker build -t my-project-image . --build-arg BUILD_STAGE=builder'  // Build builder stage
          sh 'docker build -t my-project-image . --build-arg BUILD_STAGE=runner'  // Build runner stage (copies from builder)

          // Run the container from the runner stage
          def containerId = sh(script: 'docker run -d my-project-image', returnStdout: true).trim()

          // Run tests using pytest with JUnit XML generation
          sh "docker exec ${containerId} pytest --junitxml=/test_results.xml test.py"

          // (Optional) Wait for tests to finish using exit code (adjust based on your framework)
          sh "docker wait ${containerId} || echo 'Tests failed (non-zero exit code)'"

          // Stop and remove the container
          sh 'docker stop ${containerId}'
          sh 'docker rm ${containerId}'

          // Copy the testing.xml (now test_results.xml) from the container
          sh "docker cp ${containerId}:/path/to/test_results.xml test_results.xml"
        }
      }
    }
    
    // (Optional) Add additional stages for storing results, sending notifications, etc.
  }
}
