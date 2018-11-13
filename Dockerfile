FROM alpine:3.7
RUN apk add collectd \
            collectd-write_http

COPY ./config/collectd.conf /etc/collectd/collectd.conf
RUN mkdir -p /etc/collectd/collectd.conf.d/
COPY ./config/collectd.conf.d/* /etc/collectd/collectd.conf.d/
 
ENTRYPOINT collectd -f
CMD collectd -f