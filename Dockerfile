FROM ubuntu
ARG FILENAME
WORKDIR /app
RUN \
    --mount=type=cache,target=/app/cache \
    fallocate -l 1M "/app/cache/${FILENAME}"