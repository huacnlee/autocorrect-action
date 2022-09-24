FROM huacnlee/autocorrect:v1.10.7

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
