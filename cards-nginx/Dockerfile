FROM nginx
LABEL maintainer "Tom Käsler <tom.kaesler@mni.thm.de>"

RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends \
    curl && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

COPY cards.conf /etc/nginx/conf.d/

RUN rm /etc/nginx/conf.d/default.conf

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD []

