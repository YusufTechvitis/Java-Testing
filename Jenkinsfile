pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                // Checkout code from your Git repository
                git 'https://github.com/YusufTechvitis/Java-Testing.git'
            }
        }
        stage('Build and Run Docker Container') {
            steps {
                // Stop and remove the existing container if it's running
                script {
                    try {
                        sh 'docker stop apache'
                        sh 'docker rm apache'
                    } catch (Exception e) {
                        echo 'No existing container found.'
                    }
                }
                // Build and run the Docker container
                sh 'docker run -p 80:80 -d --name apache httpd'
            }
        }  
  }
}

