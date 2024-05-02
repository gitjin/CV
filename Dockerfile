FROM ruby:2.7
ARG http_proxy=http://172.17.0.1:3128
ARG https_proxy=http://172.17.0.1:3128
WORKDIR /home/app

COPY Gemfile* ./

RUN bundle install

COPY . .

CMD [ "bundle", "exec", "jekyll", "serve" ]