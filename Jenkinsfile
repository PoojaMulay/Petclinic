pipeline {
    agent any
    tools{
        jdk 'jdk11'
        maven 'maven3'
    }

    stages{
        stage('gitcheckout') {
            steps {
                git branch: 'main', credentialsId: '8504db3f-0ed7-45f6-ab9e-9de0c2bc0a7e', url: 'https://github.com/PoojaMulay/Petclinic.git'
            }
        }
        stage('analysis') {
            steps {
                sh 'mvn clean package'
                sh 'mvn sonar:sonar -Dsonar.url=http://100.25.24.16:9000/ -Dsonar.login=squ_b34a7d97398a45ea9017825b74b768c4916f3671 -Dsonar.projectName=Petclinic -Dsonar.java.binaries=. -Dsonar.projectKey=Petclinic'
            }
        }
       /* stage("Compile"){
            steps{
                sh "mvn clean compile"
            }
        }
        
         stage("Test Cases"){
            steps{
                sh "mvn test"
            }
        } */
        stage ("build"){
            steps{
                withDockerRegistry(credentialsId: 'pooja', url: 'https://hub.docker.com/repository/docker/poojam09/petclinic/general') {
                sh "docker build -t petclinic -f Dockerfile . "
                
                
                }
            }
        }
    }
}
