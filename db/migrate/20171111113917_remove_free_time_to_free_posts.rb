class RemoveFreeTimeToFreePosts < ActiveRecord::Migration
  def change
    remove_column :free_posts, :free_time, :datetime
  end
end
