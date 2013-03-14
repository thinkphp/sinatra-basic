class MyApp < Sinatra::Base

  get '/' do
 
      @title = "Index" 
      erb:index
  end
  get '/about' do

       @title = "About Me" 
       erb:about
  end

end

