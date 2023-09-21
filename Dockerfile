FROM openjdk:8
EXPOSE 8082
COPY target/petclinic.war /var/lib/jenkins/workspace/jenkins-server/target
ENTRYPOINT ["java", "-jar", "/petclinic.war"]
