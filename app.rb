require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @person = params[:name]
    "#{@person.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get '/say/:number/:phrase' do
    return_phrase = ""
    params[:number].to_i.times do
      return_phrase += params[:phrase]
    end
    "#{return_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string_array = []
    params.each do |x|
      string_array << x[1]
    end
    "#{string_array.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @op
    when "add"
      "#{(@num1 + @num2).to_s}"
    when "subtract"
      "#{(@num1 - @num2).to_s}"
    when "multiply"
      "#{(@num1 * @num2).to_s}"
    when "divide"
      "#{(@num1 / @num2).to_s}"
    end
  end

end
