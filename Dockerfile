FROM ruby:2.5

RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock minimal-mistakes-jekyll.gemspec ./

RUN bundle install

VOLUME /usr/src/app

EXPOSE 4000

CMD ["jekyll", "serve", "--trace"]

