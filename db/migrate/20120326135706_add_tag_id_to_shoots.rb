class AddTagIdToShoots < ActiveRecord::Migration
  def change
    add_column :shoots, :tag_id, :integer
    add_index :shoots, :tag_id
  end
end
