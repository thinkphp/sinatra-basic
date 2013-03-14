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

