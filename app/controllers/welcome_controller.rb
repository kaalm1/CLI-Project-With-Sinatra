class WelcomeController < App

  get "/" do
  	erb :home
  end

  get "/goodbye" do
    erb :goodbye
  end

  post "/all_options" do
    @user_input = params[:user_input].to_i
    case @user_input
    when 1
      redirect '/new_game'
    when 2
      redirect '/stats'
    when 3
      redirect '/history'
    when 4
      redirect '/goodbye'
    else
      redirect '/'
    end
  end

end
