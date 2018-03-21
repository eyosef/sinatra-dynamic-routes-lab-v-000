require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "This is my root page"
  end

  get '/reversename/:name' do
    @reverse = params[:name].reverse
    "#{@reverse}"
  end

  get '/square/:number' do
    @square = (params[:number].to_i)**2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @n = params[:number].to_i

    @return = 

      return @phrase.repeat(@n)

  end #get say

end
