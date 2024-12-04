class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :prefered_time, :datetime
    add_column :users, :profile_picture, :string
    add_column :users, :status, :string
    add_column :users, :notification, :string
  end
end
