pipeline {
    agent any
    stages {
        stage('NuGet') {
            steps {
              bat 'echo "Building solution"'
              bat pipeline/nuget.bat
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
