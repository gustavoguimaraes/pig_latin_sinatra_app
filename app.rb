require 'bundler'
Bundler.require
require_relative './lib/pig_latin.rb'

before do
  @start = Pig_latin.new
end

get '/' do 

erb :index
end

post '/' do 
 
erb :results
end