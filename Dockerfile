FROM ubuntu
WORKDIR /app
RUN \
    --mount=type=cache,target=/app/cache \
    date > /app/cache/dummy.txt