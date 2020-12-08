FROM maven:3.6-openjdk-11
COPY src /home/app/src
COPY pom.xml /home/app
RUN cat /etc/*release*
RUN pwd
RUN ls
RUN mvn -f /home/app/pom.xml clean package -Dmaven.test.skip=true
#COPY target/HelloWorldBootDocker-0.0.1-SNAPSHOT.jar ~/app.jar
RUN chmod +x /home/app/target/HelloWorldBootDocker-0.0.1-SNAPSHOT.jar
RUN ls -l /home/app/target
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/home/app/target/HelloWorldBootDocker-0.0.1-SNAPSHOT.jar"]