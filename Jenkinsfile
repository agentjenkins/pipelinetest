pipeline {
    agent any
    stages {

        stage('NuGet') {

            steps {
              timestamps {
              bat 'echo "Nuget section"'
              bat 'pipeline/nuget.bat'

              }
              }
        }
        stage('MsBuild') {
            steps {
                timestamps {
                bat 'echo "Building solution"'
                bat 'echo "Done"'
            }
            }
        }
        stage('test') {
            timestamps {
            steps {
                bat 'echo "executing tests"'
                bat 'echo "Done"'
            }
            }
        }

    }
}
