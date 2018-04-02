require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square}"
  end

 get '/say/:number/:phrase' do
   finalstr = ""
   @number = params[:number].to_i
   @phrase = params[:phrase]
   @number.times do
     finalstr += "#{@phrase}\n"
   end
   finalstr
 end

  get '/say/:word1/:word2/:word3/:word4/:word5'do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1 } #{@word2 } #{@word3 } #{@word4 } #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if params[:operation] == "add"
      @add = @number1 + @number2
      "#{@add}"
    elsif params[:operation] == "subtract"
      @subtract = @number1 - @number2
      "#{@subtract}"
    elsif params[:operation] == "multiply"
      @multiply = @number1 * @number2
      "#{@multiply}"
    elsif params[:operation] == "divide"
      @divide = @number1 / @number2
      "#{@divide}"
    end
  end


end
