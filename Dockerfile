FROM openjdk:11.0.7

 VOLUME /tmp
  EXPOSE 8761
  ADD ./target/eureka-server-0.0.1-SNAPSHOT.jar eureka-server.jar
  ENTRYPOINT ["java","-jar","/eureka-server.jar"]

# ARG JAR_FILE=target/eureka-server-*.jar
#
# ENV JAVA_OPTS="-Xms64m -Xmx256m"
#
# COPY ${JAR_FILE} eureka-server.jar
#
# ENTRYPOINT java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -server -jar eureka-server.jar
