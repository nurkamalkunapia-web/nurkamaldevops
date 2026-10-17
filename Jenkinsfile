pipeline {
    agent any

    environment {
        STUDENT_NAME = 'Kunapiya'
        STUDENT_SURNAME = 'Nurkamal'
        STUDENT_GROUP = 'IT2-2309'
        STUDENT_ID = '41526'
        IMAGE_NAME = 'nurkamal-nurkamal-devops'
        CONTAINER_NAME = 'nurkamal-nurkamal-container'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'echo "Building project for $STUDENT_NAME $STUDENT_SURNAME"'
                sh 'test -f Dockerfile'
                sh 'test -f scripts/Kunapiya_Nurkamal_system.sh'
            }
        }

        stage('Test') {
            steps {
                sh 'bash -n scripts/Kunapiya_Nurkamal_system.sh'
                sh 'test -f Kunapiya_Nurkamal_info.txt'
                sh 'echo "Student: $STUDENT_NAME $STUDENT_SURNAME"'
                sh 'echo "Group: $STUDENT_GROUP, ID: $STUDENT_ID"'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t "$IMAGE_NAME" .'
            }
        }

        stage('Docker Run') {
            steps {
                sh 'docker run --rm --name "$CONTAINER_NAME" -e STUDENT_NAME="$STUDENT_NAME" -e STUDENT_SURNAME="$STUDENT_SURNAME" -e STUDENT_GROUP="$STUDENT_GROUP" -e STUDENT_ID="$STUDENT_ID" "$IMAGE_NAME"'
            }
        }
    }

    post {
        success {
            echo 'Finished: SUCCESS'
        }
        failure {
            echo 'Pipeline failed. Check Console Output.'
        }
    }
}
