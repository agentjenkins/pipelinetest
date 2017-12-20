pipeline {
timestamps {
    agent any
    stages {
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
