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

    # (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    @what = params[:phrase] * params[:number].to_i
    "#{@what}"
    # answer = ''

    # params[:number].to_i.times do
    #   answer += params[:phrase]
    # end
    # answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = params do |word, i|
      params[:word]
  end

end
