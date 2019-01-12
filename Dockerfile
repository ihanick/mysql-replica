FROM percona:5.7.11
COPY replica.sh /docker-entrypoint-initdb.d/
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv 9334A25F8507EFA5 \
    && apt-get update \
    && apt-get install -y sysbench \
    && rm -rf /var/lib/apt/lists/*
