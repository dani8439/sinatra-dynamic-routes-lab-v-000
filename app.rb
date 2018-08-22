require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @what = @number * @phrase
    "#{@what}"
  end

end
