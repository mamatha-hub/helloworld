pipeline {
      agent 
    { 
      label 'jenkins_slave'
    }

  stages {
    stage('Build') {
      steps {
        container('mavenimage') {
          sh """ mvn package -DskipTests """
        }
      }
    }
    stage('BuildImage') {
      steps {
        container('dockerimage') {
          sh """ docker login -u demodocker12 -p renmameth@12
          docker build -t demodocker12/mavenimage1 . 
          docker push demodocker12/mavenimage1
          """
        }
      }
    }
    stage('Run kubectl') {
     steps {
      container('kubectl') {
        sh """ kubectl get pods 
        kubectl apply -f appache-deployment.yaml
        kubectl get pods
        kubectl apply -f appache-service.yaml
        kubectl get services        
        sleep 30        
        """
      }
      }
    }
  
    }
    }
