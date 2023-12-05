pipeline {
    agent { node { label 'AGENT-1' } }

    stages {
        stage('Init') {
            steps {
                sh'''
                    ls -ltr
                    pwd
                    terraform init
                '''
            }
        }
        stage('Plan') {
            steps {
                sh'''
                    ls -ltr
                    pwd
                    terraform plan
                '''
            }
        }
        stage('Approve') {
            steps{
                input "Shall I apply?"
            }
        }

        stage('Apply') {
            steps{
                
                sh '''
                    pwd
                    ls -ltr
                    terraform apply -auto-approve
                '''
            }
        }
    }
}