FROM ruby:2.6

ENV APP_ENV production

WORKDIR /usr/src/app

COPY Gemfile* ./

RUN gem install bundler
RUN bundle update --bundler
RUN bundle install

COPY . .

EXPOSE 8080
CMD ["ruby", "server.rb"]
