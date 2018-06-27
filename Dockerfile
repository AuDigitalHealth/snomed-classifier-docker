FROM openjdk:8
ADD target/classification-service*.jar /classification-service.jar
ENTRYPOINT exec java $JAVA_OPTS -jar /classification-service.jar 