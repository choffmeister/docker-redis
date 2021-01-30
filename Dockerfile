FROM redis:5
COPY entry.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
