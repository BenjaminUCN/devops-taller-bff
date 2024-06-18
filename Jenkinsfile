pipeline {
    environment{
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-credentials')
        APP_NAME = "benjaminucn/devops-taller-bff"
        DOCKER_IMAGE = ''
    }
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
        stage ('Build docker image'){
            steps{ 
                sh 'docker build -t $IMAGE_NAME:$BUILD_NUMBER .'
            }
        }
        stage('Login to dockerhub') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('Push image') {
            steps {
                sh 'docker push $APP_NAME:$BUILD_NUMBER'
            }
        }
        stage ('Deploy'){
            steps{
                echo "Etapa DEPLOY no disponible"
            }
        }
    }
}