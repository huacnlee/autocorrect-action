FROM huacnlee/autocorrect:v2.8.0

RUN apk add --update nodejs yarn && \
  curl -sfL https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh | sh -s -- -b /usr/local/bin

ADD ./entrypoint.sh /entrypoint.sh
RUN yarn config set prefix /root/.yarn && \
  yarn global add autocorrect-node@latest

ENV PATH="/root/.yarn/bin:${PATH}"

ENTRYPOINT ["/entrypoint.sh"]
