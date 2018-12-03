FROM ruby:2.5.1

RUN apt-get update -yqq && apt-get install -y build-essential postgresql-client libpq-dev nodejs
#RUN mkdir /myapp
WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .
