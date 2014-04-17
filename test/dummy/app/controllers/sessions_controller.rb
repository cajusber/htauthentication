class SessionsController < ApplicationController 
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    redirect_to login_path, notice: "Benutzername oder Passwort falsch." unless @user
  end
end

