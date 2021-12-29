properties([parameters([gitParameter(branch: '', branchFilter: '.*', defaultValue: '1.0', name: 'tag', quickFilterEnabled: false, selectedValue: 'NONE', sortMode: 'NONE', tagFilter: '*', type: 'PT_TAG')])])
pipeline {
    agent any
    stages {
        stage('pull git code') {
            steps { 
                git branch: 'branchversion',
                credentialsId: 'vijaymanikanta180',
                url: 'https://github.com/vijaymanikanta180/docker_apache2_file.git' 
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
