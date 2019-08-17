FROM anapsix/alpine-java:8_server-jre_unlimited
MAINTAINER 552303191@qq.com
VOLUME /tmp
ADD target/boke-server-0.0.1-SNAPSHOT.jar app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 9000
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]