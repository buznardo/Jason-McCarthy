class Shoot < ActiveRecord::Base
  attr_accessible :title, :thumb, :description, :tag_names
  
  validates :title, :presence => true,
                    :length => { :maximum => 40 }
                    
  validates :description, :length => { :maximum => 120 }
  
  has_attached_file :thumb,
                    :url  => "/assets/shoots/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/shoots/:id/:style/:basename.:extension"

  validates_attachment_presence :thumb
  validates_attachment_size :thumb, :less_than => 0.3.megabytes
  validates_attachment_content_type :thumb, :content_type => ['image/jpeg', 'image/png']
  
  has_many :photos, :dependent => :destroy
  has_many :taggings, :dependent => :destroy
  has_many :tags, :through => :taggings
  
  attr_writer :tag_names
  after_save :assign_tags
  
  def tag_names
    @tag_names || tags.map(&:name).join(' ')
  end
  
  private
  
  def assign_tags
    if @tag_names
      self.tags = @tag_names.split(/\s+/).map do |name|
        Tag.find_or_create_by_name(name)
      end
    end
  end
end