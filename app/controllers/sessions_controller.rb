class SessionsController < ApplicationController
  skip_before_action :authorize

  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user.try(:authenticate, params[:password])
      session[:user_id] = @user.id
      redirect_to admin_url
    else
      redirect_to login_url, alert: "Combinación de usuario/password incorrecta."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to store_index_url, notice: "Sesión terminada"
  end
end
