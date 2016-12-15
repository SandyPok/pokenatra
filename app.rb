require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'ffaker'
require 'pry'

# Load the file to connect to the DB
require_relative 'db/connection'

# Load models
require_relative 'models/pokemon'

# Get list
get '/' do
  @pokemons = Pokemon.all
  erb :index
end

get '/create-form' do
  erb :create-form
end

#
get '/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :show
end

post '/create-pokemon' do
  Pokemon.create(
    params[:name],
    params[:cp].to_i,
    params[:poke_type],
    params[:img_url]
  )
end
