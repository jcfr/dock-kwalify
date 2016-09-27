FROM ruby:2.1
MAINTAINER Jean-Christophe Fillion-Robin "jchris.fillionr@kitware.com"

RUN apt-get update \
  && apt-get install -y --no-install-recommends runit \
  && rm -rf /var/lib/apt/lists/*

RUN gem install kwalify

ENTRYPOINT ["/usr/share/entrypoint.sh", "kwalify"]

COPY imagefiles/entrypoint.sh /usr/share/
