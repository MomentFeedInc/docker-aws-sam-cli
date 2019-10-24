FROM python:alpine

RUN set -ex; \
  apk add --no-cache gcc musl-dev; \
  pip --no-cache-dir install awscli aws-sam-cli; \
  apk del gcc musl-dev

ENTRYPOINT ["sam"]
