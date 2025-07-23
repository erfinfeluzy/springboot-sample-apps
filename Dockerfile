FROM registry.access.redhat.com/ubi8/openjdk-17-runtime@sha256:cdbab738f9f5f1e4fb06c849fdbbc65f98961594e70d0efa760ae0ff32fc849f
VOLUME /tmp
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
