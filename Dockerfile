FROM huacnlee/autocorrect:v1.7.2

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
