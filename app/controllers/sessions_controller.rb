class SessionsController < ApplicationController

  def login
    user = User.find_by(username: params[:username])
    if user && user.authenticae(params [:password])
      session[:user_id] = user.id
      redirect_to "/profile"
    else
      redirect_to "/"
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to "/"
  end

end
