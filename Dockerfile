FROM alpine:3.7
RUN apk add --no-cache postgresql-client
USER 1001
ENTRYPOINT ["postgresql"]
