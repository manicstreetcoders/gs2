class Picture < ActiveRecord::Base
  attr_accessible :title, :image, :base64

  validates :title, :presence => true, :uniqueness => true
  validates :image, :presence => true

  mount_uploader :image, ImageUploader

  def self.img_tag_by_title( title )
    pic = Picture.find_by_title( title ) 
    if pic
      img_tag = "<img src='data:image/gif;base64,#{pic.base64}' />"
    end
  end


end
