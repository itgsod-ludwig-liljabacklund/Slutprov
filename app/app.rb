class App < Sinatra::Base
  require "erb"
  include ERB::Util
  enable :sessions

  get '/' do
    @muster = Must.all
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

  post '/submitreview/:id' do |id|
    if params
      Recension.post(params, id, self)
      redirect back
    else
      redirect back
    end
  end

  post '/search' do
    redirect "/muster?#{url_encode(params['search_content'])}"
  end

  get '/sign_in' do
    redirect back if session[:logged_in]
    slim :sign_in
  end

  post '/sign_in' do
    redirect_url = User.login(params, self)
    redirect redirect_url ||= back
  end

  get '/sign_up' do
    slim :sign_up
  end

  post '/sign_up' do
    redirect_url = User.create(params)
    redirect redirect_url ||= back
  end

  get '/sign_out' do
    User.logout(self)
    redirect back
  end

end