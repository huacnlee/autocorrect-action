FROM huacnlee/autocorrect:v2.8.0

RUN apk add --update nodejs yarn && \
  curl -sfL https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh | sh -s -- -b /usr/local/bin

ADD . /
RUN yarn

ENTRYPOINT ["/entrypoint.sh"]
