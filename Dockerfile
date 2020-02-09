FROM fabric8/tomcat-9

COPY target/petclinic*.war /opt/tomcat/webapps/petclinic.war 
