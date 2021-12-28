pipeline {
    agent any
    stages {
        stage('pull git code') {
            steps { 
                git branch: "${params.branch}",
                credentialsId: 'vijaymanikanta180',
                url: 'https://github.com/vijaymanikanta180/docker_apache2_file.git' 
            } 
        }
       
        stage('Build docker') {
            steps {
                // Run docker
                sh "docker build -t apache2:${params.new_version} ."
                sh "docker run -itd -p 80:80 apache2:${params.new_version}"                
            }
        }
    }
}
