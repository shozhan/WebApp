pipeline {
  agent any
  stages {
    stage('Dev Build') {
      steps {
        echo 'Iraiyudhir Kalam'
        echo 'Completed Dev Build'
      }
    }

    stage('Deploy to QA') {
      steps {
        echo 'Email Lead - QA'
        input 'Do you want to proceed to next step?'
      }
    }

    stage('Initialize Automation Suite') {
      when {
        branch 'Jenkins-Pipeline'
      }
      parallel {
        stage('Initialize Automation Suite') {
          steps {
            echo 'Starting UI Test'
          }
        }

        stage('UI Test') {
          steps {
            echo 'Execute API Scripts'
          }
        }

        stage('API Test') {
          steps {
            echo 'Start Performance Script'
          }
        }

      }
    }

    stage('Deploy to UAT') {
      steps {
        echo 'Notify to UAT users'
      }
    }

    stage('Certify UAT') {
      steps {
        echo 'Approve certification'
      }
    }

    stage('Deploy to PROD') {
      steps {
        echo 'Starting deployment to PROD'
      }
    }

  }
}