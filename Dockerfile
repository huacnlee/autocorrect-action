FROM huacnlee/autocorrect:v1.10.9

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
