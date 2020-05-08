pipeline {
    agent {
        docker {
            image 'python:3.7-alpine'
            args '-v /tmp:/tmp'
        }
    }
    stages {
        stage('App build') {
            steps {
                sh 'docker-compose build'
            }
        }
    }
}
