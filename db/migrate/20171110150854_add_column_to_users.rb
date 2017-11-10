class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :string, :unique => true
    add_column :users, :introduction, :text
    add_column :users, :gender, :integer
    add_column :users, :area, :string
    add_column :users, :favorite, :string
    add_column :users, :work, :string


  end
end
