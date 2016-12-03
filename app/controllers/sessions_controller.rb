class SessionsController < ApplicationController
  def new
      logout
  end

  def create 
    user = User.find_by(email: params[:session][:email])

    if user && user.authenticate(params[:session][:password])
      login user
      redirect_to Grade
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    logout
    redirect_to root_url
  end


end
