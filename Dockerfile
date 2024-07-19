FROM ubuntu
WORKDIR /app
RUN \
    --mount=type=cache,target=/app/cache \
    touch /app/cache/dummy.txt