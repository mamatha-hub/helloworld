FROM tomcat:8.0.20-jre8 
ADD SampleWebApp.war /usr/local/tomcat/webapps/
ADD tomcat-users.xml /usr/local/tomcat/conf/
EXPOSE 8080
