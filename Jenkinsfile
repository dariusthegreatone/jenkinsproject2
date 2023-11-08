pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Terraform Destroy') {
            steps {
                sh 'terraform init'
                sh 'terraform destroy -auto-approve -var-file vars/test/terraform.tfvars'
            }
        }
    }
}