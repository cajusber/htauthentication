class SessionsController < ApplicationController 
  def new
  end

  def create
    @user = User.new(username: params[:username])
    redirect_to login_path, notice: "Benutzername oder Passwort falsch." unless @user.authenticate_by_htpasswd(params[:password])
  end
end

