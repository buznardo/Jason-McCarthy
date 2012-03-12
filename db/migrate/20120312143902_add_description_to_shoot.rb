class AddDescriptionToShoot < ActiveRecord::Migration
  def change
    add_column :shoots, :description, :text

  end
end
