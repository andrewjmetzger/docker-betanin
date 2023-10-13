FROM sentriz/betanin:latest
LABEL org.opencontainers.image.source https://github.com/medvid/docker-betanin

RUN apt update && \
    apt upgrade -y && \
    apt install -y git

RUN pip3 install --no-cache-dir jsonpath_rw python3-discogs-client 
RUN pip3 install --no-cache-dir beetcamp beets-copyartifacts3 beets-follow drop2beets
RUN pip3 install --no-cache-dir git+https://github.com/x1ppy/beets-originquery
