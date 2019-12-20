FROM python:3.7-alpine

USER root

RUN rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

RUN apk update && apk upgrade

RUN apk add --no-cache --virtual .build-deps \
        gcc \
        build-base \
        linux-headers \
        ca-certificates \
        python3-dev \
        libffi-dev \
        libressl-dev \
        git
RUN apk add -U --no-cache \
	libxslt-dev \
        bash


COPY report-tool/requirements.txt /report-tool/requirements.txt

WORKDIR /report-tool

RUN pip install -U setuptools
RUN pip install -r /report-tool/requirements.txt

COPY report-tool /report-tool

EXPOSE 5000

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]




