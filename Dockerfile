FROM huacnlee/autocorrect:v1.5.13

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
