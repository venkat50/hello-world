FROM busybox
CMD  echo "Hello World"
COPY  README.md /tmp/README.md
ENTRYPOINT "cat /tmp/README.md"
