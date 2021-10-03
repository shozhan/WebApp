pipeline {
  agent any
  stages {
    stage('Dev Build') {
      steps {
        echo 'Iraiyudhir Kalam'
        git(url: 'https://github.com/shozhan/WebApp.git', branch: 'main', credentialsId: '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')
      }
    }

    stage('Deploy to QA') {
      steps {
        echo 'Email Lead - QA'
        input 'Do you want to proceed to next step?'
      }
    }

    stage('Initialize Automation Suite') {
      parallel {
        stage('Initialize Automation Suite') {
          steps {
            echo 'Starting UI Test'
            waitUntil()
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