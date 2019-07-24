require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
  @nick_name = params[:name]
    @nick_name.reverse
  end

  #  get "/multiply/:num1/:num2" do
  #     # binding.pry
  # @numbers = params[:num1].to_i * params[:num2].to_i
  # "#{@numbers}."
  #   end
  get "/square/:number" do
    @num = params[:number].to_i
      "#{@num**2}"
  end

  get "/say/:number/:phrase" do
    @slogan = params[:phrase]
    @num    = params[:number].to_i
    @phrase = @slogan * @num
        "#{@phrase}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    # binding.pry
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @all_words = [@word1,@word2,@word3,@word4,@word5].join(' ').squeeze(' ')
     "#{@all_words}."
   end


     get "/:operation/:number1/:number2" do
       @operation = params[:operation]
       @number1 = params[:number1].to_i
       @number2 = params[:number2].to_i
       # binding.pry
        if @operation == "add"
         (@number1 + @number2).to_s
         # binding.pry
        elsif @operation == "subtract"
          (@number1 - @number2).to_s
        elsif @operation == "multiply"
          (@number1 * @number2).to_s
        else @operation == "divide"
          (@number1/@number2).to_s
        end
        # binding.pry
      # end
     end


 end
