pipeline {
    throttle{
      agent any
    }

    stages {

        stage('NuGet') {

            steps {
              timestamps {
              bat 'sleep 10000'
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
