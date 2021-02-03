FROM quay.io/lalamove/mysql:5.6

ENV TINI_VERSION v0.19.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini

COPY ./bin/go-mysql-elasticsearch /usr/bin/go-mysql-elasticsearch

ENTRYPOINT ["/tini","--","go-mysql-elasticsearch"]
