pipeline {
    agent any

    tools {
        maven 'maven'   // must exactly match Jenkins Maven tool name
        jdk 'jdk17'     // must exactly match Jenkins JDK name
    }

    stages {

              stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Archive Artifact') {
            steps {
                archiveArtifacts artifacts: 'target/*.jar', fingerprint: true
            }
        }
    }
}
