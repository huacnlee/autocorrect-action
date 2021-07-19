FROM huacnlee/autocorrect:latest

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]