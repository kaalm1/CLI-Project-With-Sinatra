class UserHistoryController < App

  get "/history" do
    erb :history
  end

  post "/history" do
    @user_name = params[:user_name]
    erb :display_history
  end

end
