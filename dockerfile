FROM ubuntu:1804
WORKDIR /home/petclinic-app
RUN apt-get update -y && \
    apt-get install -y openjdk-8-jdk &&\
    apt-get install -y curl && \
    curl -u student:gNPZZ8KU2mu5V2dRBLSP -O https://jfrog.ukrtux.com:443/artifactory/petclinic/com/epam_labs/vilchynskyi/K8s/petclinic/v.0.0.1/petclinic-v.0.0.2.jar
CMD [ "java", "-jar", "petclinic-v.0.0.2.jar" ]