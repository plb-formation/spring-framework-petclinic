FROM fabric8/tomcat9

COPY target/petclinic*.war /opt/tomcat/webapps/petclinic.war 
