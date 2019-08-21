FROM alpine:3.7
RUN apk add --no-cache postgresql-client
ENTRYPOINT ["postgresql"]
USER 1001
