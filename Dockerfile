FROM huacnlee/autocorrect:v2.6.2

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
