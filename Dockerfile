FROM ruby
RUN mkdir /myapp
WORKDIR /myapp
COPY ./ /myapp/
RUN gem install sinatra
CMD ["ruby" "sinatra.rb"]

