FROM openjdk:17-oracle
EXPOSE 7070
ADD build/libs/*.jar lab3.jar
ENTRYPOINT ["java", "-jar", "/lab3.jar"]