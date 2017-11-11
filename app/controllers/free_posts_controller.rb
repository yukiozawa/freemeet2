class FreePostsController < ApplicationController
  def index
    @free_posts = FreePost.all
  end

  def new
    @free_post = FreePost.new
  end

  def show
    @free_post = FreePost.find(params[:id])
    
  end

  def create
    @free_post = FreePost.create(create_params)
    redirect_to :root and return
  end

  private
  def create_params
    params.require(:free_post).permit(:free_time, :detail).merge(user_id: current_user.id)
    
  end
end
