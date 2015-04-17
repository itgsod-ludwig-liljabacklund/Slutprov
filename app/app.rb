class App < Sinatra::Base
  require 'pp'
  enable :sessions

  get '/' do
    @popmuster = Must.all
    slim :index
  end

  get '/muster' do
    @muster = Must.all
    slim :muster
  end

  get '/must/:id' do |id|
    @must = Must.first(id: id)
    slim :must
  end

  post '/submitreview' do
    if params
      Recension.post(params)
      redirect back
    else
      redirect back
    end
  end

end