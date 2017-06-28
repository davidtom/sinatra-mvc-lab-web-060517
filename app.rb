require_relative 'config/environment'

class App < Sinatra::Base
  set :views, 'views'
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @phrase = params[:user_phrase]
    pl = PigLatinizer.new
    @pig_latin = pl.to_pig_latin(@phrase)
    erb :piglatinize
  end
end
