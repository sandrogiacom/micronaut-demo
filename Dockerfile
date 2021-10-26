FROM adoptopenjdk:11-jre

RUN mkdir /usr/myapp

COPY build/libs/demo-0.1-all.jar /usr/myapp/app.jar
WORKDIR /usr/myapp

EXPOSE 8080

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar app.jar" ]
