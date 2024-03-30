FROM sentriz/betanin:latest
LABEL org.opencontainers.image.source https://github.com/andrewjmetzger/docker-betanin

# Upgrade the system before we begin
RUN apk update && apk upgrade

# Add support for installing extras via git
RUN apk add --no-cache git

# Add beets plugins
RUN pip3 install --no-cache-dir beetcamp && \
    pip3 install --no-cache-dir beets-follow drop2beets beets-filetote && \
    pip3 install --no-cache-dir flask flask-cors && \
    pip3 install --no-cache-dir git+https://github.com/x1ppy/beets-originquery
