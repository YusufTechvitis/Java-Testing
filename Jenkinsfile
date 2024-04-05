pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Dockering...'
                sh 'docker stop apache && docker rm apache || true' // Stop and remove the existing container
                sh 'docker run -d --name yr-apache-container -p 80:80 yusufme3/yr-apache-image:latest'
            }
        }
    }
}
