pipeline {
    agent { dockerfile true }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/username/repo.git'
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t my-app-build -f ./build-agent/Dockerfile .'
                sh 'docker run -v $WORKSPACE:/app my-app-build npm run build'
            }
        }
        // stage('Deploy') {
        //     steps {
        //         sh 'docker build -t my-app-deploy -f Dockerfile.deploy .'
        //         sh 'docker run my-app-deploy'
        //     }
        // }
    }
}