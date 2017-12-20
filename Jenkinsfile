pipeline {
    agent any
    stages {
        timestamps {
        stage('NuGet') {
            steps {

              bat 'echo "Nuget section"'
              bat 'pipeline/nuget.bat'

              }
        }
        stage('MsBuild') {
            steps {
                bat 'echo "Building solution"'
                bat 'echo "Done"'
            }
        }
        stage('test') {
            steps {
                bat 'echo "executing tests"'
                bat 'echo "Done"'
            }
        }
        }
    }
}
