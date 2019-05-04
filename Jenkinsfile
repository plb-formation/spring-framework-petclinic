pipeline {
    agent any

    tools {
        maven "maven 3.6"
    }
    stages {
        stage('Checkstyle') {
           steps{
              // Run the maven build with checkstyle
              sh "mvn clean package checkstyle:checkstyle"
           }
        }
    }
    post {
            always {
                archiveArtifacts artifacts:'**/target/*.war', fingerprint: true
            }
        }
}
