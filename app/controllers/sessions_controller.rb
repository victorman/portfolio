class SessionsController < ApplicationController
  def create
    session[:password] = params[:password]
    if admin?
      flash[:notice] = "Successfully logged in"
      redirect_to(:controller => 'jobs', :action=>'index')
    else
      flash[:notice] = "Not logged in"
      render :new
    end
  end
  
  def destroy
    reset_session
    flash[:notice] = "Successfully logged out"
    render :new
  end
  
  def new 
  end
  
  
end
