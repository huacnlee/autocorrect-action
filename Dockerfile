FROM huacnlee/autocorrect:v2.5.4

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
