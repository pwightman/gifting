class CreateGroupUsers < ActiveRecord::Migration
  def change
    create_table :group_users do |t|
      t.references :group
      t.references :user

      t.timestamps
    end
    add_index :group_users, :group_id
    add_index :group_users, :user_id
  end
end
