FROM huacnlee/autocorrect:v1.5.5

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]