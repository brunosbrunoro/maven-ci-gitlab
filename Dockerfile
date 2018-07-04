FROM openjdk:8-jdk
LABEL authors="Bruno Scrok Brunoro"
LABEL email="bruno.sbrunoro@gmail.com"

RUN apt-get update && apt-get install -y maven
RUN echo "deb http://packages.cloud.google.com/apt cloud-sdk-jessie main" | tee /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN apt-get update && apt-get install -y google-cloud-sdk
RUN mvn -version
RUN gcloud --version
RUN python --version
