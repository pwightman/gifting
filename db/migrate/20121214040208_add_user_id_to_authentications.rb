class AddUserIdToAuthentications < ActiveRecord::Migration
  def change
    add_column :authentications, :user_id, :integer
    add_index :authentications, :user_id
  end
end
