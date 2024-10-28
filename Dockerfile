FROM ruby:3.3

RUN apt update && apt install -y apache2


WORKDIR /internals
COPY buildJekyll.sh /internals/

RUN chmod +x /internals/buildJekyll.sh && /internals/buildJekyll.sh

EXPOSE 80
EXPOSE 443
CMD ["apachectl", "-D", "FOREGROUND"]
