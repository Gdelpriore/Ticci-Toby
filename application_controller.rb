require_relative 'models/model.rb'
require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  post '/Start' do
    erb :Start
  end
  get'/cornered' do
    
    erb :cornered
  end
post '/fight' do
  
    erb :fight
  end

post '/next' do
  @x=roll 
  if @x>=4
    erb :win
  else
    erb :death
    
  end
end
  
end
  
  