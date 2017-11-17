class FreePostsController < ApplicationController
  def index
    @free_posts = FreePost.order("created_at DESC")
  end

  def new
    @free_post = FreePost.new
  end

  def show
    @free_post = FreePost.find(params[:id])
    # binding.pry
    lat_position = @free_post.lat_pos
    lng_position = @free_post.lng_pos

    gon.lat_position_js = lat_position
    gon.lng_position_js = lng_position

    @comments = @free_post.comments
  end

  def create
    @free_post = FreePost.create(create_params)

    if @free_post.save
      redirect_to :root, notice: 'Succeeded Free Post'
    else
      redirect_to :root, alert: 'Missed Free Post'
    end
  end

  def destroy
    free_post = FreePost.find(params[:id])
    if free_post.user_id == current_user.id
      free_post.destroy
      if free_post.destroy
        redirect_to :root, notice: 'Destroyed the Free Post'
      else
        redirect_to :root, alert: 'Missed Destroying the Free Post'
      end
    end
    
  end


  def edit
    @free_post = FreePost.find(params[:id])
  end

  def update
    free_post = FreePost.find(params[:id])
    if free_post.user_id == current_user.id
      free_post.update(create_params)
      if free_post.save
         redirect_to free_post_path(free_post.id), notice: 'Succeeded The Free Post Update'
      else 
         redirect_to free_post_path(free_post.id), alert: 'Missed The Free Post Update'
      end
    end
  end


  private
  def create_params
    params.require(:free_post).permit(:start_time, :end_time, :place, :detail, :lat_pos, :lng_pos).merge(user_id: current_user.id)
    
  end
end
