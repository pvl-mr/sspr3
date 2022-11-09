FROM openjdk:17-oracle
EXPOSE 7070
ADD build/libs/lab3-0.0.1-SNAPSHOT.jar lab3.jar
ENTRYPOINT ["java", "-jar", "/lab3.jar"]