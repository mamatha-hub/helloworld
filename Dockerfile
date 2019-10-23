FROM tomcat:8.0.20-jre8 
COPY target/helloworld-1.1.jar /usr/local/tomcat/webapps/helloworld-1.1.jar
ADD tomcat-users.xml /usr/local/tomcat/conf/
EXPOSE 8080
