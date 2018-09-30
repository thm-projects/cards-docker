FROM node:8-stretch

LABEL maintainer Tom Kaesler <tom.kaesler@mni.thm.de>

ARG baseUrl=http://localhost/

ENV CARDS_APP https://git.thm.de/arsnova/flashcards/-/jobs/artifacts/master/download?job=build
ENV CARDS_SETTINGS https://git.thm.de/arsnova/flashcards/raw/master/settings.json

ENV ROOT_URL=$baseUrl

EXPOSE 3000

RUN \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        unzip \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN \
    curl -fsSLO "$CARDS_APP" && \
    mv download\?job\=build cards.zip && \
    unzip cards.zip && \
    curl -fsSLO "$CARDS_SETTINGS" && \
    npm config set registry https://registry.npmjs.org/ && \
    cd /build/bundle/programs/server && \
    npm install

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD []

