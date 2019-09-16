require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
  @times_repeat = params[:number].to_i
  @phrase = params[:phrase].to_s
  @out_put = @times_repeat * @phrase
  "#{@out_put}"

end
end
