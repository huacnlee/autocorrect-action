FROM huacnlee/autocorrect:v2.6.1

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
