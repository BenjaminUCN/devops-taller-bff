pipeline {
    agent any
    stages {
        stage('Check') {
            steps {
                sh 'ls *.json'
            }
        }
        stage('Test') {
            agent {
                docker {
                    image 'node:current-alpine'
                    // Run the container on the node specified at the
                    // top-level of the Pipeline, in the same workspace,
                    // rather than on a new node entirely:
                    reuseNode true
                }
            }
            steps {
                sh 'ls *.json'
                sh 'node --version'
                sh 'npm install'
                sh 'npm run test'
            }
        }
    }
}