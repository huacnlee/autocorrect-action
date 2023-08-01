FROM huacnlee/autocorrect:v2.8.0

RUN apk add --update nodejs yarn

ADD . /
RUN yarn

ENTRYPOINT ["/entrypoint.sh"]
