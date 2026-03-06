# Image Tomcat 11
FROM tomcat:11.0-jdk21

# حذف التطبيقات الافتراضية
RUN rm -rf /usr/local/tomcat/webapps/*

# نسخ WAR ديال المشروع
COPY forumCDL.war /usr/local/tomcat/webapps/ROOT.war

# Port
EXPOSE 8080

# تشغيل Tomcat
CMD ["catalina.sh", "run"]




