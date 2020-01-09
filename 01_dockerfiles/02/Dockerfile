FROM ruby
RUN apt-get update -yqq
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir -p /opt/app/
WORKDIR /opt/app/
ONBUILD COPY myapp . 
RUN gem install rails
RUN gem install bundler
ONBUILD RUN bundle install
ONBUILD RUN rake db:migrate
