class App < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :home
  end

  get "/info" do
    erb :info
  end
end
