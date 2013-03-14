# Getting Started with Sinatra and Heroku

## Gemfile

```
source "https://rubygems.org"
gem 'sinatra'
```

## config.ru

```
require 'rubygems'
require 'bundler'

Bundler.require

require './app.rb'

run MyApp
```

## app.rb

```ruby
class MyApp < Sinatra::Base
  get '/' do
 
      @title = "Index" 
      erb:index
  end
  get '/about' do

       @title = "About Me" 
       erb:about
  end
  get '/writing' do

       @title = "Writing" 
       erb:writing
  end
  get '/work' do

       @title = "Work" 
       erb:work
  end
  get '/contact' do

       @title = "Contact" 
       erb:contact
  end
end

```

## Running locally

```
$ bundle install
$ rackup

```

## Deploying to Heroku
