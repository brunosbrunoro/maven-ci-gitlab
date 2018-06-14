FROM openjdk:8-jdk
LABEL authors="Bruno Scrok Brunoro"
LABEL email="bruno.sbrunoro@gmail.com"

RUN apt-get update \ 
    && apt-get install -y maven

RUN mvn -version
