FROM ruby:2.6.2

RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs ghostscript

RUN mkdir -p /app
RUN mkdir -p /usr/local/nvm
WORKDIR /app

RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
RUN apt-get install -y nodejs

RUN node -v
RUN npm -v

COPY Gemfile Gemfile.lock package.json  ./
RUN gem install bundler -v 1.17.2
RUN bundle install --verbose --jobs 20 --retry 5
RUN npm install -g yarn

COPY . ./

RUN rake db:migrate

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
