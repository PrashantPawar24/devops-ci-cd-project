pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                echo "Cloning GitHub repository..."
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t prashantpawarpp/flask-devops-app:1.0 .'
            }
        }

        stage('Push Docker Image') {
            steps {
                sh 'docker push prashantpawarpp/flask-devops-app:1.0'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 5000:5000 prashantpawarpp/flask-devops-app:1.0'
            }
        }

    }
}