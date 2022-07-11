FROM amazoncorretto:18-alpine3.15
ENTRYPOINT ["/usr/bin/hi.sh"]

LABEL org.opencontainers.image.source=https://github.com/guneetsahai-neo/hi

COPY hi.sh /usr/bin/hi.sh
RUN chmod +x /usr/bin/hi.sh
COPY target/hi.jar /usr/share/hi/hi.jar