FROM ruby:3.3

RUN apt update && apt install -y 


WORKDIR /internals
COPY buildJekyll.sh /internals/

RUN chmod +x /internals/buildJekyll.sh && /internals/buildJekyll.sh