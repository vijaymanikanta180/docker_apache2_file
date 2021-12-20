pipeline {
    agent {
       label ('docker')
    }

    stages {
        stage('pull git code') {
            steps { 
                git branch: 'main',
                credentialsId: 'vijaymanikanta180',
                url: 'https://github.com/vijaymanikanta180/docker_apache2_file.git' 
            } 
        }
       
        stage('Build docker') {
            steps {
                // Run docker
                sh "docker build -t apache2:1.0 ."
                sh "docker run -itd -p 80:80 d9a3c24fa8c8"
                
            }
        }
    }
}
