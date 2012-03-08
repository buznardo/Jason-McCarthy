class CreateShoots < ActiveRecord::Migration
  def change
    create_table :shoots do |t|
      t.string :title

      t.timestamps
    end
  end
end
