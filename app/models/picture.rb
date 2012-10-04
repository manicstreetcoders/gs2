class Picture < ActiveRecord::Base
  attr_accessible :title, :image

  validates :title, :presence => true, :uniqueness => true

  mount_uploader :image, ImageUploader
end
