FROM docker.elastic.co/logstash/logstash-oss:6.2.3

LABEL maintainer Sam Sargeant <sam@sargeant.net.nz>
LABEL description="Logstash image with useful plugins"

# Plugins
RUN /usr/share/logstash/bin/logstash-plugin install logstash-codec-sflow
RUN /usr/share/logstash/bin/logstash-plugin install logstash-codec-netflow
RUN /usr/share/logstash/bin/logstash-plugin install logstash-filter-geoip
RUN /usr/share/logstash/bin/logstash-plugin install logstash-filter-cidr
RUN /usr/share/logstash/bin/logstash-plugin install logstash-filter-csv
RUN /usr/share/logstash/bin/logstash-plugin install logstash-filter-date
RUN /usr/share/logstash/bin/logstash-plugin install logstash-filter-dns
RUN /usr/share/logstash/bin/logstash-plugin install logstash-filter-dissect
RUN /usr/share/logstash/bin/logstash-plugin install logstash-filter-useragent

RUN /usr/share/logstash/bin/logstash-plugin update logstash-codec-sflow
RUN /usr/share/logstash/bin/logstash-plugin update logstash-codec-netflow
RUN /usr/share/logstash/bin/logstash-plugin update logstash-filter-geoip
RUN /usr/share/logstash/bin/logstash-plugin update logstash-filter-cidr
RUN /usr/share/logstash/bin/logstash-plugin update logstash-filter-csv
RUN /usr/share/logstash/bin/logstash-plugin update logstash-filter-date
RUN /usr/share/logstash/bin/logstash-plugin update logstash-filter-dns
RUN /usr/share/logstash/bin/logstash-plugin update logstash-filter-dissect
RUN /usr/share/logstash/bin/logstash-plugin update logstash-filter-useragent

EXPOSE 5000
EXPOSE 5000/udp
EXPOSE 9666/udp
