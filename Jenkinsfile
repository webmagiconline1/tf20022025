pipeline {
    agent any

    stages {
        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform Plan') {
            steps {
                script {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }
        stage('User Input') {
            steps {
                script {
                    def userInput = input(
                        id: 'userInput', message: 'Apply or Destroy?', parameters: [
                            choice(name: 'ACTION', choices: ['Apply', 'Destroy'], description: 'Choose an action')
                        ]
                    )
                    if (userInput == 'Apply') {
                        sh 'terraform apply tfplan'
                    } else if (userInput == 'Destroy') {
                        sh 'terraform destroy -auto-approve'
                    }
                }
            }
        }
    }
}