node ('docker') {
 stages {
  stage ('build docker image') {
   steps {
    git 'https://github.com/vijaymanikanta180/docker_apache2_file.git'
    sh 'docker build -t apache2image:1.0 .'
   }
  }
 }
}
