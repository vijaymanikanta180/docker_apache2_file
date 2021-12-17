 node('docker') {
       stages {
        stage('Build Docker image') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/vijaymanikanta180/docker_apache2_file.git'
                sh 'docker build -t Apache2:1.0'
       
            }
        }
    }
}
