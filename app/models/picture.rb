class Picture < ActiveRecord::Base
  attr_accessible :title, :image, :base64

  validates :title, :presence => true, :uniqueness => true
  validates :image, :presence => true

  mount_uploader :image, ImageUploader
end
