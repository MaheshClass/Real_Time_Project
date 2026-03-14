# Use official Tomcat image
FROM tomcat:8.5-jdk8-temurin

# Remove default applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file and rename it to ROOT
COPY  ./taxi-booking/target/taxi-booking-1.0.1.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]