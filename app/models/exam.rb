class Exam < ActiveRecord::Base
  attr_accessible :area_id, :name, :source

  validates :name, :presence => true, :uniqueness => true
  validates :source, :presence => true
  
  belongs_to :area
end
