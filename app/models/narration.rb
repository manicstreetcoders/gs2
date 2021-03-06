class Narration < ActiveRecord::Base
  attr_accessible :title, :audio, :base64

  validates :title, :presence => true, :uniqueness => true
  validates :audio, :presence => true

  mount_uploader :audio, AudioUploader
end
