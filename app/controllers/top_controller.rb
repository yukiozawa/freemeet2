class TopController < ApplicationController
  def index
        @free_posts = FreePost.all
  end
end
