class Shoot < ActiveRecord::Base
  attr_accessible :title, :thumb, :description, :tag_id
  
  validates :title, :presence => true,
                    :length => { :maximum => 40 }
                    
  validates :description, :length => { :maximum => 120 }
  
  has_attached_file :thumb, {
    :path => "/shoots/:id/:style/:basename.:extension"
  }.merge(S3_SETTINGS)

  validates_attachment_presence :thumb
  validates_attachment_size :thumb, :less_than => 0.03.megabytes
  validates_attachment_content_type :thumb, :content_type => ['image/jpeg', 'image/png']
  
  has_many :photos, :dependent => :destroy
  belongs_to :tag
end
