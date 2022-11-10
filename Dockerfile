FROM gradle:7.5.0-jdk17-alpine AS TEMP_BUILD_IMAGE

ENV APP_HOME=/usr/app
WORKDIR $APP_HOME
COPY build.gradle settings.gradle $APP_HOME

COPY gradle $APP_HOME/gradle
COPY --chown=gradle:gradle . /home/gradle/src

RUN gradle build || return 0
COPY . .
RUN gradle clean build

# actual container
FROM openjdk:17-oracle
ENV ARTIFACT_NAME=lab3-*-all.jar
ENV APP_HOME=/usr/app

WORKDIR $APP_HOME
COPY --from=TEMP_BUILD_IMAGE $APP_HOME/build/libs/$ARTIFACT_NAME lab3.jar

EXPOSE 7070
ENTRYPOINT exec java -jar lab3.jar