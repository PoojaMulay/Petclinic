FROM openjdk:11
EXPOSE 8082
COPY target/petclinic.war /
ENTRYPOINT ["java", "-jar", "/petclinic.war"]
