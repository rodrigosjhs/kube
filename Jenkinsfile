pipeline {
    agent none // Definimos "none" no topo porque cada stage define seu próprio agente

    stages {
        stage('Build') {
            agent {
                label 'node116 || node117' // Define o agente específico para essa etapa
            }
            steps {
                sh 'sleep 10 ; docker build -t ${JOB_NAME} -f Dockerfile . --no-cache' // Constrói imagem Docker
            }
        }

        // stage('kubernetes') {
        //     agent {
        //         kubernetes {
        //             yamlFile 'jenkins-pod.yaml' // Usa PodTemplate definido em arquivo YAML
        //             defaultContainer 'shell'   // Container default para rodar comandos shell
        //         }
        //     }
        //     steps {
        //         sh 'kubectl cluster-info' // Pode ser repetitivo — talvez não precise rebuild aqui
        //     }
        // }
    }
}
