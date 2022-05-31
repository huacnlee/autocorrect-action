FROM huacnlee/autocorrect:v1.9.5

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
