class TopController < ApplicationController
  def index

    now_time = Time.zone.now

    start_date = Time.zone.now
    end_date = start_date + 604800
    
    @free_posts = FreePost.where(end_time: start_date..end_date)

    gon.free_posts_js = @free_posts

  end
end

