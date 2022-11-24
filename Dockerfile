FROM huacnlee/autocorrect:v2.5.1

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
