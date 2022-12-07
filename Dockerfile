FROM eclipse-temurin:17

ARG PROFILE

ENV ARTIFACT_NAME=daedalus-0.0.1-SNAPSHOT.jar
ENV APP_HOME=/usr/app/
ENV PROFILE ${PROFILE}

RUN mkdir $APP_HOME
COPY japp.jar /opt/app
CMD ["java", "-jar", "/opt/app/japp.jar"]
EXPOSE 8080
ENTRYPOINT exec java -jar -Dspring.profiles.active=${PROFILE} ${ARTIFACT_NAME}