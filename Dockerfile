FROM python:3.12
ARG FILENAME
WORKDIR /app
RUN \
    --mount=type=cache,target=/app/cache \
    dd if=/dev/random of="/app/cache/${FILENAME}" bs=4k iflag=fullblock,count_bytes count=1M