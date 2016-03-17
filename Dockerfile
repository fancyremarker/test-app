FROM quay.io/aptible/ruby:ruby-2.2

RUN apt-install redis-server

ADD Gemfile /app/
WORKDIR /app
RUN bundle install --without development test

ADD . /app

ENV PORT 3000
EXPOSE 3000

CMD ./start.sh
