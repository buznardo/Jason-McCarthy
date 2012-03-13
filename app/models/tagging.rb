class Tagging < ActiveRecord::Base
  belongs_to :shoot
  belongs_to :tag
end
