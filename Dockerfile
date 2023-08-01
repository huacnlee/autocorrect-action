FROM huacnlee/autocorrect:v2.6.2

RUN apk add --update nodejs yarn && \
  yarn add autocorrect-node@latest

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
