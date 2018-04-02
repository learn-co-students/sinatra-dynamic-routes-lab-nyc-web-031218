require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    "#{num ** 2}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    str = ""
    num.times do
      str += phrase
    end
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.values.join(" ").strip + "."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1]
    num2 = params[:number2]
    operation = params[:operation]
    str = num1+operation+num2
    "#{eval str}"
  end
end
