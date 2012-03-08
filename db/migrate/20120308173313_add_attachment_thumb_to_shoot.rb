class AddAttachmentThumbToShoot < ActiveRecord::Migration
  def self.up
    add_column :shoots, :thumb_file_name, :string
    add_column :shoots, :thumb_content_type, :string
    add_column :shoots, :thumb_file_size, :integer
    add_column :shoots, :thumb_updated_at, :datetime
  end

  def self.down
    remove_column :shoots, :thumb_file_name
    remove_column :shoots, :thumb_content_type
    remove_column :shoots, :thumb_file_size
    remove_column :shoots, :thumb_updated_at
  end
end
