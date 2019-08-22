FROM alpine:3.7

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/entrypoint.sh", "-fg"]

#RUN apk --update add postgresql-client && rm -rf /var/cache/apk/*
RUN apk add --no-cache postgresql-client
COPY entrypoint.sh /entrypoint.sh
RUN chmod 777 /entrypoint.sh

USER 1001
#ENTRYPOINT ["psql"]
