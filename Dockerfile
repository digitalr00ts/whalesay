FROM alpine:3.7
RUN cd && set -ex && \
  apk --no-cache upgrade && \
  apk add --no-cache perl
COPY cowsay /usr/local/bin/cowsay
COPY docker.cow /usr/local/share/cows/default.cow
ENTRYPOINT ["/usr/local/bin/cowsay"]
