# On part d'une image Tomcat officielle
FROM tomcat:9.0-jdk11-openjdk

# On supprime les applications par défaut de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# On copie votre fichier ROOT.war dans le dossier webapps de Tomcat
COPY ROOT.war /usr/local/tomcat/webapps/

# Port utilisé par Railway
EXPOSE 8080

# Lancer Tomcat
CMD ["catalina.sh", "run"]
