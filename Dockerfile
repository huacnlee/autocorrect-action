FROM huacnlee/autocorrect:v1.8.0

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
