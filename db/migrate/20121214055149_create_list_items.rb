class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.references :list
      t.text :content

      t.timestamps
    end
    add_index :list_items, :list_id
  end
end
