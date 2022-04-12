FROM huacnlee/autocorrect:v1.5.9

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]