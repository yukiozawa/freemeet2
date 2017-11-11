class AddPlaceToFreePosts < ActiveRecord::Migration
  def change
    add_column :free_posts, :place, :string, null: false
  end
end
