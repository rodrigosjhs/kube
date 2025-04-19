pipeline {
    agent {
        kubernetes {
            yamlFile 'jenkins-pod.yaml'
            defaultContainer 'shell'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t ${JOB_NAME} -f Dockerfile .'
            }
        }
    }
}
