class SessionsController < ApplicationController
<<<<<<< HEAD

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if user.activated?
        log_in user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        redirect_back_or user
      else
        message = "Account Not Activated"
        message += "Check Email for Activation Link"
        flash[:warning] = message
        redirect_to root_url
      end
    else
      flash.now[:danger] = 'Invalid E-Mail & Password Combination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
=======
def create 
end 

>>>>>>> d4f2d9d4888103543f3513dfd48bb21b4c1b005a

end
