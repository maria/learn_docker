FROM alpine:3.5

COPY ./app /opt/app
WORKDIR /opt/app

RUN apk update && apk add --no-cache \
      build-base \
      bash \
      python \
      python-dev \
      py-pip \
      libffi \
      libffi-dev \
      openssl \
      openssl-dev \
      git \
      openssh \
    && pip install -r requirements.txt

CMD python app.py
