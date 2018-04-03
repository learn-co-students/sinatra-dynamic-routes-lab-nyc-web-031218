require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @reverse = @name.reverse
    "#{@reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    @integer = @number.to_i
    @answer = @integer * @integer
    "#{@answer}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    ans = ""
    @number.times do |num|
      ans += "#{@phrase}"
    end
    ans
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do

    @operation = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    @add = @n1 + @n2
    @subtract = @n2 - @n1
    @multiply = @n1 * @n2
    @divide = @n1 / @n2

    if @operation == "add"
      "#{@add}"

    elsif @operation == "subtract"
      "#{@subtract}"

    elsif @operation == "multiply"
      "#{@multiply}"

    elsif @operation == "divide"
      "#{@divide}"
    else "error"

    end
  end

end
