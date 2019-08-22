FROM alpine:3.7
#RUN apk --update add postgresql-client && rm -rf /var/cache/apk/*
RUN apk add --no-cache postgresql-client
ENTRYPOINT ["psql"]
USER 1001
