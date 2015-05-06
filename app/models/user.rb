class User
  include DataMapper::Resource
  include BCrypt

  property :id, Serial
  property :name, String, :required => true
  property :email, String, :required => true
  property :password_hash, BCryptHash, :required => true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.create(params)
    @user = User.new(name: params[:name])
    @user.email = params[:email]
    @user.password = params[:password]
    @user.save!
    return '/'
  end

  def self.login(params, app)
    @user = User.find_by_email(params[:email])
    if @user.password == params[:password]
      p "hej"
      @user.give_token(app)
      return '/'
    else
      p "nej"
      return '/'
    end
  end

  def give_token(app)
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