FROM busybox
CMD  echo "Hello World"
COPY  README.md /tmp/README.md
ENTRYPOINT "/bin/cat /tmp/README.md"
