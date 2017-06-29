class Level < ActiveRecord::Base
  #belongs_to :hangman

  def self.max_levels
    5
  end

  def self.choose_level(new_hangman)
    begin
      puts "What level would you like to play (1 - 5)?"
      new_hangman.level = gets.chomp.to_i
    end while /[1-5]/.match(new_hangman.level.to_s).nil?
  end

  def self.all_levels
    ["http://www.gutenberg.org/cache/epub/46205/pg46205.txt",
     "https://www.gutenberg.org/files/2591/2591-0.txt",
     "https://www.gutenberg.org/files/11/11-0.txt",
     "http://www.gutenberg.org/cache/epub/5200/pg5200.txt",
    ]
  end

  def self.level_1(new_hangman)
    new_hangman.players_word = "_"*new_hangman.given_word.length
    new_hangman.given_word.chars.each_with_index do |letter, idx|
      if /[aeiouy]/.match(letter)
        new_hangman.players_word[idx] = letter
      end
    end
    new_hangman.letters_picked = "aeiouy"
  end

  def self.level_2(new_hangman)
    value = ''; 6.times{value  << (65 + rand(25)).chr.downcase}
    new_hangman.given_word.chars.each_with_index do |letter,idx|
      if /[#{value}]/.match(letters[0])
        new_hangman.players_word[idx] = letter
      end
    end
    new_hangman.letters_picked = value
  end

  def self.level_3(new_hangman)
    new_hangman.given_word.chars.each_with_index do |letter,idx|
      if (idx+1) % 3 == 0
        new_hangman.players_word[idx] = letter
        new_hangman.letters_picked += letter
      end
    end
  end


  def self.levels_builder(new_hangman)
    #puts out some letters already, makes sure size appropriate as well
    #Level 1: Gets all the vowels
    #Level 2: Gets 6 random letters
    #Level 3: Gets every 3rd letter
    idx=0
    if new_hangman.level == 1
      self.level_1(new_hangman)
    elsif new_hangman.level == 2
      self.level_2(new_hangman)
    elsif new_hangman.level == 3
      self.level_3(new_hangman)
    end
  end
end
