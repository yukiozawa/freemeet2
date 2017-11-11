class AddLatToFreePosts < ActiveRecord::Migration
  def change
    add_column :free_posts, :lat_pos, :string, null: false
    add_column :free_posts, :lng_pos, :string ,null: false
  end
end
