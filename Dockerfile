FROM sentriz/betanin:latest
LABEL org.opencontainers.image.source https://github.com/andrewjmetzger/docker-betanin

RUN apk update && \
    apk upgrade && \
    apk add --no-cache git
    
RUN pip3 install --no-cache-dir jsonpath_rw python3-discogs-client beetcamp
RUN pip3 install --no-cache-dir beets-follow drop2beets beets-filetote
RUN pip3 install --no-cache-dir git+https://github.com/x1ppy/beets-originquery
