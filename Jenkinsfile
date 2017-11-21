pipeline {
    agent any
    stages {
        stage('scm') {
            steps {
                bat 'echo "Hello World"'
                bat '''
                    echo "Multiline shell steps works too"
                    dir
                '''
            }
        }
    }
}
