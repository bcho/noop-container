FROM library/debian:wheezy

MAINTAINER hbc bcxxxxxx@gmail.com

RUN apt-get update \
        &&  apt-get install -y curl

RUN curl -o /usr/local/bin/noop -SL "https://github.com/bcho/noop/releases/download/0.1.0/noop-$(dpkg --print-architecture)" \
        && chmod +x /usr/local/bin/noop

CMD ["/usr/local/bin/noop"]
