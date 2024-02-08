pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t my-app-build -f ./build-agent/Dockerfile .'
                sh 'docker run my-app-build'
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