
class SessionsController < ApplicationController
  def new
    # Display the login form
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = 'Login successful!'
      redirect_to weather_path # Redirect to the desired page after login.
    else
      flash.now[:alert] = 'Invalid email or password'
      render 'new' # Render the login form again.
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'Logout successful!'
    redirect_to login_path # Redirect to the desired page after logout.
  end
end
