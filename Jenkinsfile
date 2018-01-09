#!/usr/bin/env groovy

pipeline {

      agent any

      stages {
        stage('Source controls dwd') {
          steps {
            echo checkout $env.BRANCH_NAME
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
}
