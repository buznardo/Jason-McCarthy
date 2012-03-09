class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :shoot

      t.timestamps
    end
    add_index :photos, :shoot_id
  end
end
