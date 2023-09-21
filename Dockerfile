FROM openjdk:8
EXPOSE 8082
COPY target/petclinic.war petclinic.war
ENTRYPOINT ["java", "-jar", "/petclinic.war"]
