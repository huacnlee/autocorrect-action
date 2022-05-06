FROM huacnlee/autocorrect:v1.7.4

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
