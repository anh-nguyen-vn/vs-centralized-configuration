FROM java:8-jdk-alpine

COPY ./target/centralized-configuration-1.0.jar /usr/app/

WORKDIR /usr/app

RUN sh -c 'touch centralized-configuration-1.0.jar'

ENTRYPOINT ["java","-jar","centralized-configuration-1.0.jar"]