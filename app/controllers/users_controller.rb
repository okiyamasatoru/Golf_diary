class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :check_login, only: [:edit, :update]
  
  def show
  end
  
  def edit
  end
  
  def update
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to @user, notice: 'User name was successfully updated.' }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
  end

  private
  
  def set_user
      @user = User.find(params[:id])
  end
  
  def check_login
      redirect_to :root if current_user == nil || @user.id != current_user.id
  end
  
  def user_params
      params.require(:user).permit(:name)
  end
end  