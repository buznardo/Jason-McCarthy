class Photo < ActiveRecord::Base
  attr_accessible :photo, :pic
  
  has_attached_file :pic,
                    :url  => "/assets/photos/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/photos/:id/:style/:basename.:extension"

  validates_attachment_presence :pic
  validates_attachment_size :pic, :less_than => 5.megabytes
  validates_attachment_content_type :pic, :content_type => ['image/jpeg', 'image/png']
  
  belongs_to :shoot
end
