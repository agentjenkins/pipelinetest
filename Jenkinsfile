#!/usr/bin/env groovy

pipeline {

      agent any

      stages {
        stage('Source controls dwd') {
          steps {
            echo 'geh'
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
        success {
        slackSend channel: "#ddm-jenkins",
                  color: "good",
                  message: "Build success on jenkins: ${env.JOB_NAME} ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"
        }
        failure {
        slackSend channel: "#ddm-jenkins",
                  color: "good",
                  message: "Build success on jenkins: ${env.JOB_NAME} ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"
        }
    
}
