require 'dm-validations'

class User
  include DataMapper::Resource
  include BCrypt

  property :id, Serial
  property :name, String, :required => true
  property :email, String, :required => true, :unique => true,
           :format   => :email_address
  property :password_hash, BCryptHash, :required => true

  validates_length_of :name, :within => 1..14

  def self.build(params, app)
    @user = User.create(name: params[:name].capitalize!, email: params[:email], password_hash: params[:password])
    if @user.save
      @user.give_token(app)
    else
      return '/sign_up'
    end
  end

  def self.login(params, app)
    @user = User.find_by_email(params[:email])
    if @user && @user.password_hash == params[:password]
      @user.give_token(app)
      return '/'
    else
      return '/sign_in'
    end
  end

  def give_token(app)
    app.session[:name] = self.name
    app.session[:logged_in] = true
    app.session[:email] = self.email
  end

  def self.find_by_email(email)
    User.first(email: email)
  end

  def self.logout(app)
    app.session.clear
  end
end