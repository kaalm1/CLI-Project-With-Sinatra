# #require_relative '../app/hangman-class.rb'
# require_relative '../config/environment.rb'
# require_relative '../app/services/hangman-methods.rb'
# require_relative '../app/services/running-methods.rb'
# require_relative '../app/services/user-methods.rb'

#Features to add: different levels & options to view different parts of games (wins/losses)
class RunGame

  def self.begin
    system("clear")
    begin
      Welcome.home
      option = player_options
      run_games if option == 1
      view_stats if option == 2
      view_user_history if option == 3
    end while option != 4
    goodbye!
  end
end
