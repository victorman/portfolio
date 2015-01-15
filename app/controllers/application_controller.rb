class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :admin? 
  
  protected
  
  def admin?
    session[:password] == 'foobar'
  end
  
  def authorize
    unless admin?
      flash[:error] = "unauthorized access"
      redirect_to controller: :jobs, action: :index
      return false
    end
    return true
  end
end
