FROM huacnlee/autocorrect:v2.5.8

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
