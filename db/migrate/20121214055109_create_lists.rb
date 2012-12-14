class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.references :user
      t.references :group

      t.timestamps
    end
    add_index :lists, :user_id
    add_index :lists, :group_id
  end
end
