class Welcome

  def self.home
    #A welcome output to our game
    str = "\n"
    str+= "888                                                           \n"
    str+= "888                                                           \n"
    str+= "888                                                           \n"
    str+= "88888b.  8888b. 88888b.  .d88b. 88888b.d88b.  8888b. 88888b.  \n"
    str+= "888 \"88b    \"88b888 \"88bd88P\"88b888 \"888 \"88b    \"88b888 \"88b \n"
    str+= "888  888.d888888888  888888  888888  888  888.d888888888  888 \n"
    str+= "888  888888  888888  888Y88b 888888  888  888888  888888  888 \n"
    str+= "888  888\"Y888888888  888 \"Y88888888  888  888\"Y888888888  888 \n"
    str+= "                             888                              \n"
    str+= "                        Y8b d88P                              \n"
    str+= "                         \"Y88P\"                             \n"
    str
  end

  def self.print_win(new_hangman)
    system("clear")
    puts "Congratulations! You win!!"
    puts "The winning word you completed was: \'#{new_hangman.word.map{|letters| letters[0]}.join('')}\' & you only got #{new_hangman.errors} mistake(s)."
    puts " "
    self.wait
  end

  def self.print_lost(new_hangman)
    system("clear")
    new_hangman.print_tree
    puts "Sorry you lost :("
    puts "The word was: #{new_hangman.word.map{|letters| letters[0]}.join('')}"
    self.wait
  end

  def self.ending(new_hangman)
    if new_hangman.word.map {|letters| letters[0]} == new_hangman.word.map {|letters| letters[1]}
      self.print_win(new_hangman)
    else
      self.print_lost(new_hangman)
    end
  end

  def self.wait
    puts "Press \"ENTER\" to continue!"
    answer = gets.chomp
    system('clear')
  end

end
