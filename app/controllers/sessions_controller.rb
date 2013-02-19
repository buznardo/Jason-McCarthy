class SessionsController < ApplicationController
  
  def new
    render layout: 'blank'
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      flash[:success] = "Welcome back dude!"
      redirect_to root_url
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Adios! See you soon."
    redirect_to root_url
  end
  
end
