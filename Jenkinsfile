pipeline {
    agent none
    stages {
        stage('App build') {
            agent {
                dockerfile {
                    dir 'docker'
                    label 'docker_report-tool'
                }
            }
        }
    }
}
