FROM huacnlee/autocorrect:v1.9.4

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
