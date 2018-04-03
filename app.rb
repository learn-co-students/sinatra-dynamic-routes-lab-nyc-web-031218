require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
  	@user_name = params[:name]
  	"#{params[:name].reverse}"
  end

  get '/square/:number' do
  	"#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do 
  @number = params[:number].to_i
  @phrase = params[:phrase].to_s
  "#{@phrase}" * @number
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
  	@space = " "
  	@word1 = params[:word1].to_s + @space
  	@word2 = params[:word2].to_s + @space
  	@word3 = params[:word3].to_s + @space
  	@word4 = params[:word4].to_s + @space
  	@word5 = params[:word5].to_s
  "#{@word1 + @word2 + @word3 + @word4 + @word5+'.'}"
  end

  get '/:operation/:number1/:number2' do
  	@operator = params[:operation].to_s
  	@number1 = params[:number1].to_i
  	@number2 = params[:number2].to_i

  	case @operator

  	when "add"
  		ans = @number1 + @number2
  	when "subtract"
  		ans = @number1 - @number2
  	when "multiply"
  		ans = @number1 * @number2
  	when "divide"
  		ans = @number1 / @number2
  	end
  	ans.to_s
  end
  		

  end