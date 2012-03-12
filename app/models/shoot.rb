class Shoot < ActiveRecord::Base
  attr_accessible :title, :thumb, :description
  
  validates :title, :presence => true,
                    :length => { :maximum => 40 }
                    
  validates :description, :length => { :maximum => 120 }
  
  has_attached_file :thumb,
                    :url  => "/assets/shoots/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/shoots/:id/:style/:basename.:extension"

  validates_attachment_presence :thumb
  validates_attachment_size :thumb, :less_than => 0.3.megabytes
  validates_attachment_content_type :thumb, :content_type => ['image/jpeg', 'image/png']
  
  has_many :photos
end