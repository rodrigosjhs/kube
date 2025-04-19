pipeline {
    agent {
        kubernetes {
            yamlFile 'jenkins-pod.yaml'
            defaultContainer 'shell'
        }
    }
    stages {
        stage('Deploy') {
            steps {
                sh 'kubectl cluster-info'
            }
        }
    }
}
