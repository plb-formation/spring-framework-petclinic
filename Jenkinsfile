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
        stage('Sonarqube') {
           steps {
               withSonarQubeEnv('SonarQube') {
                sh "mvn  clean package sonar:sonar -Dsonar.host_url=$SONAR_HOST_URL "
                }
           }
        }

    }
    post {
            always {
                archiveArtifacts artifacts:'**/target/*.war', fingerprint: true
            }
        }
}
