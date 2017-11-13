class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @free_posts = FreePost.where(user_id: params[:id]).order("created_at DESC")
  end

  def edit
    
  end

  def update
    current_user.update(update_params)
    redirect_to user_path
  end


  private
  def update_params
    params.require(:user).permit(:user_name, :introduction, :gender, :area, :favorite, :work, :image)
  end
end


