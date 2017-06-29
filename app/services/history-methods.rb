

def show_history(user)
  game_number = 1
  str = ""
  Hangman.all.each do |game|
    if game.user.user_name == user
      str += "Game # #{game_number}\n"
      str += "Game Level: #{game.level}\n"
      game.print_tree
      if game.word.map {|letters| letters[1]} == game.word.map {|letters| letters[0]}
        str += "The word: \'#{game.word.map {|letters| letters[0]}.join('')}\'\n"
        str += "You won this round! :)\n"
      else
        str += game.word.map {|letters| letters[1]}.join('') + "\n"
        str += game.word.map {|letters| letters[0]}.join('') + "\n"
        str += "You lost this round :(\n"
      end
      game_number +=1
      str+= "\n"
    end
  end
  str
  #Welcome.wait
end

def view_user_history
  puts "Who was your user?"
  answer = gets.chomp
  system('clear')
  show_history(answer)
end
