class UsersController < ApplicationController

  def show
    # binding.pry
    @user = User.find(params[:id])
    @free_posts = FreePost.where(user_id: params[:id]).order("created_at DESC")
  end

  def edit
    
  end

  def update
    current_user.update(update_params)
    if current_user.save
      redirect_to user_path(current_user.id), notice: 'Succeeded Your User Data Update'
    else
      redirect_to user_path(current_user.id), alert: 'Missed Your User Data Update'
    end
    
  end

  def following
      @user  = User.find(params[:id])
      @users = @user.followings
      render 'show_follow'
  end

  def followers
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_follower'
  end




  private
  def update_params
    params.require(:user).permit(:user_name, :introduction, :gender, :area, :favorite, :work, :image)
  end
end
