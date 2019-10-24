FROM tomcat:8.0.20-jre8 
ADD SampleWebApp.war /usr/local/tomcat/webapps/
EXPOSE 8080
