FROM openjdk:21
ADD target/*.jar /opt/app.jar
CMD ["java", "-jar", "/opt/app.jar"]