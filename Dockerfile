FROM alpine:3.7
RUN apk add --no-cache mysql-client
USER 1001
ENTRYPOINT ["mysql"]
