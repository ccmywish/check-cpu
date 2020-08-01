FROM ruby
RUN mkdir /myapp
WORKDIR /myapp
COPY sinatra.rb /myapp/sinatra.rb
RUN gem install sinatra
CMD ["ruby" "sinatra.rb" "-p 8080"] 

