FROM ruby:3.2.2

WORKDIR /myapp

COPY ./Gemfile ./Gemfile.lock ./
RUN bundle install

CMD ["rails", "s", "-b", "0.0.0.0"]