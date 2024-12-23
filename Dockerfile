FROM sbtscala/scala-sbt:eclipse-temurin-jammy-8u352-b08_1.8.3_2.12.17 as builder
COPY ./src /opt/eventsim/src
COPY ./project /opt/eventsim/project
COPY ./build /opt/eventsim/build
COPY assembly.sbt /opt/eventsim/
COPY build.sbt /opt/eventsim/

WORKDIR /opt/eventsim
RUN sbt assembly

FROM debian:latest
WORKDIR /opt/eventsim

COPY --from=builder /opt/eventsim/target/scala-2.12/eventsim-assembly-2.0.jar ./

CMD ["/bin/bash"]
