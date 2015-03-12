class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]
  before_filter :authorize
  
  def edit
    
  end
  
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to root_path, notice: 'Settings were successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
  private
  
  def set_user
    @user = User.first
  end
  
  def user_params
    params.require(:user).permit(:name, :title, :location)
  end
end