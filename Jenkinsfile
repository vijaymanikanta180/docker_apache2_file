pipeline {
    agent {
       label ('docker')
    }

    stages {
        stage('pull git code') {
            steps { 
                echo ‘pulling code from git repository’
                git ‘https://github.com/vijaymanikanta180/docker_apache2_file.git' 
            } 
        }
       
        stage('Build docker') {
            steps {
                // Run docker
                sh "docker build -t Apache2:1.0"

            }

        }
    }
}
