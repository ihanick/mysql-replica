FROM percona:5.7.25
COPY replica.sh /docker-entrypoint-initdb.d/
USER root
RUN yum install -y sysbench
USER mysql
