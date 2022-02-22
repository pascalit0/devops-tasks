FROM openjdk:8-alpine

COPY happy-stars.jar happy-stars.jar
COPY run.sh run.sh
RUN chmod 755 happy-stars.jar

ENTRYPOINT ["/bin/sh", "run.sh"]