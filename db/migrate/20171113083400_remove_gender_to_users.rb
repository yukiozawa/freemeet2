class RemoveGenderToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :gender, :integer
  end
end
