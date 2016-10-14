require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @reversed = @name.reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @array = []
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @array << @phrase
    @repeated_phrase = @array * @num
    @phrase_string = @repeated_phrase.join("\n")
    "#{@phrase_string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    @array = [@word1, @word2, @word3, @word4, @word5]
    @sentence = @array.join(" ") + "."

    "#{@sentence}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @result = @number1.send(@operation, @number2)
    "#{@result}"
  end

end
