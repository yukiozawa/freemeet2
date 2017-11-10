class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    
  end

  def update
    # binding.pry
    current_user.update(update_params)
    redirect_to user_path
  end


  private
  def update_params
    params.require(:user).permit(:user_name, :introduction, :gender, :area, :favorite, :work, :image)
  end
end


