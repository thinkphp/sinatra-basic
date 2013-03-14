# Getting Started with Sinatra and Heroku

## Create the site structure

```
   myApp/
   public/
      public/stylesheets
      public/JavaScript
   views/
   app.rb
   Gemfile
   config.ru 

$ mkdir myApp
$ cd myApp
$ mkdir views
$ touch views/layout.erb
$ touch views/index.erb
$ touch views/about.rb
$ touch views/contact.rb
$ touch views/writing.rb
$ touch views/work.rb
$ touch app.rb
$ touch Gemfile
$ touch config.ru   
```

## Let's create a layout and add

```
<!DOCTYPE html>
<html>
<head>
<title><%= @title %></title>
<link href='http://fonts.googleapis.com/css?family=Lora' rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="/stylesheets/style.css">
</head>
<body>
<header class="site-header">
<a href="/" title="My name up in lights!" class="logo"><img src="http://www.sinatrarb.com/images/logo.png">Sinatra<nav class="site-nav">
<ul class="nav">
<li class="current"><a href="/" title="Home">Home</a></li>
<li><a href="/about" title="Read a little about Express">About</a>
</li><li><a href="/writing" title="Find more articles I have written in Express">Writing</a></li>
<li><a href="/work" title="Find more projects I have worked on">Work</a></li>
<li><a href="/contact" title="Send me a message or find me elsewhere">Contact</a></li>
</ul></nav></a></header>

   <body><%= yield %><p>Created by <a href="http://thinkphp.ro">Adrian Statescu</a></p></body>

</html>
```

## Let's create an index and add

```
<h1>Sinatra</h1>
<p>Welcome to Sinatra</p>
<pre><code>
require 'sinatra'

get '/about' do
    "thinkphp.ro"
end

$ gem install sinatra
$ ruby app.rb
== Sinatra has token the stage ..
>> Listening on 0.0.0.0:4567
</code></pre>
```

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

### Setup Procfile

```
web: bundle exec rackup -p $PORT
```

### Run these commands

Just run the following commands in the root folder and the app should be up and running on Heroku.

```
$ git init
$ git add .
$ git commit -m 'initial commit'
$ heroku create
$ git push heroku master
$ heroku ps
$ heroku open
 
```