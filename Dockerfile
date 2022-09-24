FROM huacnlee/autocorrect:v1.10.8

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
