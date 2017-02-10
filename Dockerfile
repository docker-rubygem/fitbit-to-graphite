FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.0

RUN gem install fitbit-to-graphite --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["fitbit-to-graphite.rb"]
CMD ["--help"]
