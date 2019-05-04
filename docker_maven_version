// exemple d'agent utilisant une image docker contenant un version
// de maven
pipeline
{
    agent any
    stages
    {
        stage ( 'Maven Install')
        {
            agent
            {
                docker
                {
                image 'maven:3.5.0'
                }
            }
            steps
            {
                sh 'mvn clean install'
            }
        }
    }
}
