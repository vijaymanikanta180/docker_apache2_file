pipeline {
    agent any
    parameters {
        gitParameter name: 'TAG',
                     type: 'PT_TAG',
                     defaultValue: 'branchversion'
        }
    
    stages {
        stage('pull git code') {
            steps { 
                git branch: "${params.TAG}", credentialsId: '3f410fe8-ee67-4ae1-9f14-0d1f7737d33d', url: 'https://github.com/vijaymanikanta180/docker_apache2_file.git'
            
            } 
        }
       
        stage('Build docker') {
            steps {
                // Run docker
                sh "docker build -t apache2:1.0 ."
                sh "docker run -itd -p 81:80 apache2:1.0"                
            }
        }
    }
}
