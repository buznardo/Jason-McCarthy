class Photo < ActiveRecord::Base
  attr_accessible :photo, :pic
  
  has_attached_file :pic, {
    :path => "/photos/:id/:style/:basename.:extension"
  }.merge(S3_SETTINGS)

  validates_attachment_presence :pic
  validates_attachment_size :pic, :less_than => 3.megabytes
  validates_attachment_content_type :pic, :content_type => ['image/jpeg', 'image/png']
  
  belongs_to :shoot
end
