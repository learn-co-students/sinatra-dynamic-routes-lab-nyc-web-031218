require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get '/say/:number/:phrase' do
    @num, @phrase = params[:number].to_i, params[:phrase]
    string = ""
    @num.times do
      string += "#{@phrase}\n"
    end
    "#{string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = params.values.join(" ") + "."
    "#{string}"
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1, @num2 = params[:number1].to_i, params[:number2].to_i
    if @op == "add"
      "#{@num1 + @num2}"
    elsif @op == "subtract"
      "#{@num1 - @num2}"
    elsif @op == "multiply"
      "#{@num1 * @num2}"
    elsif @op == "divide"
      "#{@num1 / @num2}"
    end

  end

end
