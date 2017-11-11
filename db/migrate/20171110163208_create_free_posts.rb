class CreateFreePosts < ActiveRecord::Migration
  def change
    create_table :free_posts do |t|

      t.integer :user_id
      t.date :free_time
      t.text :detail
      t.timestamps null: false
    end
  end
end
