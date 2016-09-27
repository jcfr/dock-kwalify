FROM ruby:2.1
MAINTAINER Jean-Christophe Fillion-Robin "jchris.fillionr@kitware.com"

RUN apt-get update \
  && apt-get install -y --no-install-recommends runit \
  && rm -rf /var/lib/apt/lists/*

RUN gem install kwalify

ENTRYPOINT ["/usr/share/entrypoint.sh", "kwalify"]

COPY imagefiles/entrypoint.sh /usr/share/

WORKDIR /work

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG IMAGE
ARG VCS_REF
ARG VCS_URL
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name=$IMAGE \
      org.label-schema.description="Dockerized version of kwalify: Parser, schema validator, and data binding tool for YAML and JSON." \
      org.label-schema.url="https://github.com/jcfr/dock-kwalify" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url=$VCS_URL \
      org.label-schema.schema-version="1.0"
