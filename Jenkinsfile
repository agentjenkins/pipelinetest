#!/usr/bin/env groovy

pipeline {
    agent any

    stages {
        stage('Source controls dwd') {
            steps {
                echo 'geh'
            }

        }
        stage('Prepare') {
            steps {
                currentBuild.description = "my new description"
            }
        }
        stage('NuGet') {

            steps {
                timestamps {
                    timeout(10)
                }
                timestamps {
                    bat 'pipeline/nuget.bat'
                }
            }
        }
        stage('MsBuild') {
            steps {
                timestamps {
                    bat 'echo "Building solution"'
                }
                bat 'echo "Done"'
            }
        }
        stage('test') {
            steps {
                timestamps {
                    bat 'echo "executing tests"'
                    bat 'echo "Done"'
                }
            }
        }
    }
    post {
        success {
            slackSend channel: "#ddm-jenkins",
                    color: "warning",
                    message: "Build success on jenkins: ${env.JOB_NAME} ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"
        }
        failure {
            slackSend channel: "#ddm-jenkins",
                    color: "warning",
                    message: "Build success on jenkins: ${env.JOB_NAME} ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"
        }
    }

}
