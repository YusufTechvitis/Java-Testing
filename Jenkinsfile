pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Dockering...'
                sh 'docker stop apache && docker rm apache || true' // Stop and remove the existing container
                sh 'docker run -p 80:80 -d --name apache httpd' // Run the Docker container
            }
        }
    }
}
