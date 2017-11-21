pipeline {
    agent any
    stages {
        stage('scm') {
            steps {
                bat 'echo "Checking out project"'
                bat '''
                    echo "Inspect contents"
                    dir
                '''
            }
        }
        stage('build') {
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
