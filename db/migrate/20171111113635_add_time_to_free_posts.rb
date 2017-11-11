class AddTimeToFreePosts < ActiveRecord::Migration
  def change
    add_column :free_posts, :start_time, :datetime, null: false
    add_column :free_posts, :end_time, :datetime ,null: false
  end
end
