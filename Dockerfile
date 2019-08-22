FROM alpine:3.7
#RUN apk --update add postgresql-client && rm -rf /var/cache/apk/*
RUN apk add --no-cache postgresql-client
USER 1001
#ENTRYPOINT ["psql"]
COPY ./run.sh /
RUN chmod +x ./run.sh
ENTRYPOINT ["run.sh"]

