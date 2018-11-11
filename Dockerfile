FROM python:3-alpine

RUN apk update && \
 	apk add postgresql-libs libstdc++ && \
 	apk add --virtual .build-deps build-base musl-dev postgresql-dev && \
    pip install --no-cache-dir numpy && \
    pip install --no-cache-dir pandas && \
    pip install --no-cache-dir psycopg2-binary && \
    apk --purge del .build-deps