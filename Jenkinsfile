pipeline {
    agent any
    stages {
        stage('Clean Up') {
            steps {
                echo 'Cleaning up...'
                deleteDir()
            }
        }
        stage('Clone Repository') {
            steps {
                echo 'Cloning repository...'
                sh 'git clone https://github.com/jenkins-docs/simple-java-maven-app.git'
            }
        }
        stage('Build') {
            steps {
                echo 'Building...'
                dir('simple-java-maven-app') {
                    sh 'mvn clean install'
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                dir('simple-java-maven-app') {
                    sh 'mvn test'
                }
            }
        }
    }
}