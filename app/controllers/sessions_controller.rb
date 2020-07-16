class SessionsController < ApplicationController

  def new 

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
     if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      
      flash[:success] = "Logged in successfully"
      redirect_to user

       else

      flash.now[:danger] = 'Invalid email/password combination'
      # byebug
      #  flash.now[:alert] = "there was something wrong with your login details"
       render 'new'

        # byebug
     end
  end
  
  def destroy 
    session[:user_id] = nil
    flash[:success] = "logged out"
    redirect_to root_path
  end


end