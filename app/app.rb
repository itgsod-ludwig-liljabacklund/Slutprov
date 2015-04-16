class App < Sinatra::Base
  enable :sessions

  get '/' do
    slim :index
  end

  get '/muster' do
    @muster = Must.all
    slim :muster
  end

end