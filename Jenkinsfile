pipeline{
    agent {
        docker { image 'node:22-alpine3.20' }
    }
    stages{
        stage ('Test'){
            steps{
                sh 'npm install'
                sh 'npm run test'
                echo "Etapa TEST completada"
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