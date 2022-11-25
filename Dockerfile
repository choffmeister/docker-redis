FROM redis:7-alpine
COPY entry.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
