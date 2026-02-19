# --------- Stage 1 : Build WAR using Maven ----------
FROM maven:3.9.9-eclipse-temurin-17 AS builder

WORKDIR /app

# Copy project files
COPY . .

# Build WAR file
RUN mvn clean package -DskipTests


# --------- Stage 2 : Deploy WAR to Tomcat ----------
FROM tomcat:9.0-jdk17

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy generated WAR file from builder
COPY --from=builder /app/target/onlinebookstore-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/onlinebookstore.war

EXPOSE 8080

CMD ["catalina.sh", "run"]

