FROM huacnlee/autocorrect:v2.8.0

RUN apk add --update nodejs yarn && \
  yarn add autocorrect-node@v2.8.0

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
