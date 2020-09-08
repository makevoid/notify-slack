FROM ruby:2.7.1-alpine3.11

WORKDIR /app

RUN gem i rake

ADD . /app

CMD rake
