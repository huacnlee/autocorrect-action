FROM huacnlee/autocorrect:v1.11.0

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
