pipeline {
    agent {
        docker {
            image 'node:current-alpine'
            args '-v .:/app -w /app'
        }
    }
    stages {
        stage('Check') {
            steps {
                sh 'ls *.json'
            }
        }
        stage('Test') {
            steps {
                sh 'ls *.json'
                sh 'mkdir npm_cache'
                sh 'export npm_config_cache=npm_cache'
                sh 'rm -r node_modules'
                sh 'node --version'
                sh 'npm install'
                sh 'npm run test'
            }
        }
    }
}