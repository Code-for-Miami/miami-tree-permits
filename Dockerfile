FROM ruby:2.4.2

RUN apt-get update -qq && \
  apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /miami-tree-permits
WORKDIR /miami-tree-permits
ADD Gemfile* /miami-tree-permits/
RUN bundle install
ADD . /miami-tree-permits
