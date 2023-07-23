FROM ruby:3.2.2-alpine3.18
RUN apk add \
    build-base \
    postgresql-dev \
    tzdata \
    nodejs
    
RUN mkdir /app
WORKDIR /app
COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock
RUN bundle install -j 20
COPY . .