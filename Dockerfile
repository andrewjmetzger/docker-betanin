FROM sentriz/betanin:latest
LABEL org.opencontainers.image.source https://github.com/medvid/docker-betanin

RUN pip3 install --no-cache-dir jsonpath_rw python3-discogs-client drop2beets beetcamp beets-copyartifacts3 beets-follow
