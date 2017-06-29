class Hangman < ActiveRecord::Base
  belongs_to :user
  #has_many :words
  #has_many :trees

  # attr_accessor :platform, :letters_picked, :errors
  # attr_accessor :word, :tree, :wins, :losses, :level
  # attr_accessor :user, :win

  # @@all = []

  # def initialize
  #   @tree = Tree.build_tree
  #   #Level.choose_level(self)
  #   #@word = Word.build_word_platform(self.level)
  #   #@letters_picked = []
  #   #@errors = 0
  #   #Level.levels_builder(self)
  # end
  #
  # def self.all
  #   @@all
  # end


  def print_tree
    self.tree
  end


  def add_error
    self.total_errors +=1
    body_parts = Errors.error_array[0..self.total_errors]
    Tree.add_part_to_tree(body_parts,self)
  end


  # def print_word_platform
  #   str = ""
  #   str += self.word.map{|letters| letters[1]}.join('')
  #   str
  # end

  # def print_guessed_letters
  #   "Picked Letters: #{self.letters_picked.join(' - ')}"
  # end


end
