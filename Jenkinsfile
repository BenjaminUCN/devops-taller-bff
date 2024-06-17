pipeline {
    agent {
        docker {
            image 'node:current-alpine'
            args '-v .:/app -w /app'
        }
    }
    stages {
        stage('Test') {
            steps {
                sh 'rm -r -f node_modules; rm -r -f .npm_cache; mkdir .npm_cache'
                sh 'npm install --cache=.npm_cache; rm -r -f .npm_cache'
                sh 'npm run test'
            }
        }
        stage ('Build'){
            steps{
                echo "Etapa BUILD no disponible"
            }
        }
        stage ('Deploy'){
            steps{
                echo "Etapa DEPLOY no disponible"
            }
        }
    }
}