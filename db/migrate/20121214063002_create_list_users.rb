class CreateListUsers < ActiveRecord::Migration
  def change
    create_table :list_users do |t|
      t.references :list
      t.references :user

      t.timestamps
    end
    add_index :list_users, :list_id
    add_index :list_users, :user_id
  end
end
