require 'sinatra'
require_relative 'caesar'
require 'sinatra/reloader' if development?


get '/' do
  erb :index, layout: :main
end

post '/shift/' do
  @message = params[:message]
  @shift_factor = params[:shift_factor].to_i
  @shifted_message = caesar_cipher(@message, @shift_factor)
  erb :show, layout: :main
end
