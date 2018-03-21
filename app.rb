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

    @return = @phrase * @n
    @return
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @join = [params[:word1],params[:word2], params[:word3], params[:word4], params[:word5]].join(" ")
    "#{@join}."
  end

  get '/:operation/:number1/:number2' do
    @add = params[:number1].to_i + params[:number2].to_i
    @add
  end

end
