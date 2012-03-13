class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.references :shoot

      t.timestamps
    end
    add_index :tags, :shoot_id
  end
end
