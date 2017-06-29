ENV['SINATRA_ENV'] ||= "development"
ENV['RACK_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require

require 'pry-byebug'
require 'word_salad'
require 'random-word'
require 'random_word_generator'
require 'sqlite3'
require 'rubygems'
require 'open-uri'
require 'sinatra'
require 'active_record'
require 'rake'

require_all './app'

connection_details = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details)
