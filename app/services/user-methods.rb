require_relative '../models/user.rb'

def get_user
  puts "Please enter your User Name:"
  user_name = gets.chomp
  User.new_or_existing(user_name)
end
