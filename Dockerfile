FROM docker:19.03.8-dind

RUN set -eux; \
        apk add --no-cache --no-progress \
                bash \
                curl \
                git \
                py-pip \
                python-dev \
                libffi-dev \
                openssl-dev \
                gcc \
                libc-dev \
                make \
        ;

RUN pip install --quiet docker-compose

WORKDIR /app
COPY . .
