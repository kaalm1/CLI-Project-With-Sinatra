def player_options

  str = "\n"
  str += "___________________\n"
  str += "| New Game: \"N\" |\n"
  str += "| Stats   : \"S\" |\n"
  str += "| History : \"H\" |\n"
  str += "| Quit    : \"Q\" |\n"
  str += "__________________\n"
  str
  # answer_conversion(gets.chomp)
end

def answer_conversion(answer)
  case answer
  when "N", "n"
    1
  when "S", "s"
    2
  when "H", "h"
    3
  when "Q", "q"
    4
  else
    5
  end
end



def run_games
    user = get_user
    begin_game(pre_game_starters(user))
end

def view_stats
  str = " \n"
  str += Stats.print_info_by_ranks
  str += "\n"
  str += " \n"
  str += " \n"
  #Welcome.wait
end

def goodbye!
  puts "We loved having you play CJ Hangman. Come again soon!"
end
