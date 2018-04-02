require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i ** 2
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @arr = []

    @number.times do
      @arr << @phrase
    end

    "#{@arr}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @str = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    "#{@str}"

  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @result = nil

    case @operation
      when "add"
        @result = @number1 + @number2
      when "subtract"
        @result = @number1 - @number2
      when "multiply"
        @result = @number1 * @number2
      when "divide"
        @result = @number1 / @number2
      else
        @result = nil
    end
    # binding.pry
    "#{@result}"
  end


end
