require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get "/say/:number/:phrase" do
    @phrase = params[:phrase]
    @number = params[:number].to_i

    @arr = []

    @number.times do
      @arr << @phrase
    end

    "#{@arr}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} "+"#{@word2} "+"#{@word3} "+"#{@word4} "+"#{@word5}"+"."
    # binding.pry
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @add = @number1 + @number2
    @minus = @number1 - @number2
    @divide = @number1 / @number2
    @multiply = @number1 * @number2


        case @operation
    when "add"
      "#{@add}"
      # binding.pry
    when "subtract"
      "#{@minus}"
    when "divide"
      "#{@divide}"
    when "multiply"
      "#{@multiply}"
      # binding.pry
    else
      "Some other number"
    end
  end
end
