FROM percona:5.7
COPY replica.sh /docker-entrypoint-initdb.d/
RUN apt-get update \
    && apt-get install -y sysbench \
    && rm -rf /var/lib/apt/lists/*
