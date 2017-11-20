class RelationshipsController < ApplicationController

  def create
    @user = User.find(params[:relationship][:following_id])
    current_user.follow!(@user)
    respond_to do |format|
     format.html { redirect_to @user }
     format.js
    end
  end

  def destroy
    @user = Relationship.find(params[:id]).following
    current_user.unfollow!(@user)
    respond_to do |format|
    format.html { redirect_to @user }
    format.js
    end
  end



  def index
    now_time = Time.zone.now

    start_date = Time.zone.now
    end_date = start_date + 259200

    following_ids = "SELECT following_id FROM relationships WHERE follower_id = :user_id"
    @follow_posts = FreePost.where("user_id IN (#{following_ids})OR user_id = :user_id", user_id: current_user.id).order('created_at desc').page(params[:page]).per(20)

    @free_posts = FreePost.where("user_id IN (#{following_ids})OR user_id = :user_id", user_id: current_user.id).where(end_time: start_date..end_date).order('created_at desc').page(params[:page]).per(20)

    gon.free_posts_js = @free_posts

  end

  
end
