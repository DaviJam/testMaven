cd C:\TP-integration-git-maven\apache-tomcat-10.0.2\bin
start C:\TP-integration-git-maven\apache-tomcat-10.0.2\bin\startup.bat
cd C:\TP-integration-git-maven
mvn package 
Copy-Item -Path C:\TP-integration-git-maven\monappli-web\target\monappli-web.war -Destination C:\TP-integration-git-maven\apache-tomcat-10.0.2\webapps -PassThru
timeout /T 5 /NOBREAK 
start chrome http://localhost:8080/monappli-web