FROM huacnlee/autocorrect:v1.7.3

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
