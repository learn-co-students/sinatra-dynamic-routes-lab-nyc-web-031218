require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @reverse_name = @name.reverse

    "#{@reverse_name}"
  end

  get '/square/:number' do
    @number = params[:number]
    @number_to_square = params[:number]

    "#{@number.to_i * @number_to_square.to_i}"
  end

  get '/say/:number/:phrase' do
    @number_of_times = params[:number].to_i
    @phrase = params[:phrase]

    "#{@phrase}" * @number_of_times
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @all_words = []
    @all_words << params[:word1]
    @all_words << params[:word2]
    @all_words << params[:word3]
    @all_words << params[:word4]
    @all_words << params[:word5]

    "#{@all_words.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @operation = nil
    case params[:operation]
    when "add"
      @operation = "+"
    when "subtract"
      @operation = "-"
    when "multiply"
      @operation = "*"
    when "divide"
      @operation = "/"
    end

    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @code = "#{@number1}  #{@operation} #{@number2}"
    @result = eval(@code)

    "#{@result}"
end

end
