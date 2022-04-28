FROM huacnlee/autocorrect:v1.5.12

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]