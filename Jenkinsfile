pipeline {
    agent any

    stages {

        stage('Clone Repo') {
            steps {
                echo "Cloning repository..."
            }
        }

        stage('Build Image') {
            steps {
                sh 'chmod +x scripts/build.sh'
                sh './scripts/build.sh'
            }
        }

        stage('Deploy Container') {
            steps {
                sh 'chmod +x scripts/deploy.sh'
                sh './scripts/deploy.sh'
            }
        }

        stage('Cleanup') {
            steps {
                sh 'chmod +x scripts/cleanup.sh'
                sh './scripts/cleanup.sh'
            }
        }
    }
}