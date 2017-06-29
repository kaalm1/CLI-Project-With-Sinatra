class NewGameController < App

  get '/new_game' do
    erb :new_game
  end

  post '/new_game' do
    @user = User.find_or_create_by(name: params[:user_name])
    @new_hangman = pre_game_starters(@user)
    @new_hangman.level = params[:level].to_i
    @new_hangman.given_word = Word.random_word(@new_hangman)
    Level.levels_builder(@new_hangman)
    @new_hangman.save
    erb :begin_game
  end

  post '/continue' do
    @new_hangman = Hangman.find(params[:id])#build from database
    @new_letter = params[:new_letter]
    right_wrong_guess(@new_letter, @new_hangman)
    @new_hangman.save
    if not_game_end?(@new_hangman)
       #save new hangman to database
      erb :begin_game
    else
      if @new_hangman.players_word == @new_hangman.given_word
        erb :game_over_won
      else
        erb :game_over_lost
      end
    end
  end
end
