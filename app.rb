require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number]
    "#{@number.to_i * @number.to_i}"
  end

  get "/say/:number/:phrase" do
    @phrase = params[:phrase]
    @number = params[:number]
    result = ""
    @number.to_i.times do
      result += @phrase
    end
    result
  end

  get "/say/*" do
    @list = params['splat'][0].split("/")
    result = @list.join(" ") + "."
    result
  end

  get "/:operation/*" do
    @numbers = params['splat'][0].split("/").map{|num| num.to_i}
    @operation = params[:operation]
    case @operation
    when "add"
      "#{@numbers.reduce(:+)}"
    when "subtract"
      "#{@numbers.reduce(:-)}"
    when "divide"
      "#{@numbers.reduce(:/)}"
    when "multiply"
      "#{@numbers.reduce(:*)}"
    end
  end
end
