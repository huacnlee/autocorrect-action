FROM huacnlee/autocorrect:1.1.1

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]