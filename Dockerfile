FROM ruby:2.6.3

WORKDIR /usr/src/app

COPY lib/climbcomp/version.rb ./lib/climbcomp/version.rb
COPY climbcomp.gemspec ./
COPY Gemfile* ./
COPY VERSION ./
RUN bundle install

COPY . .
RUN rake install

CMD ["climbcomp"]
