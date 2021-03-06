class Area < ActiveRecord::Base
  attr_accessible :name

  validates :name, :presence => true, :uniqueness => true

  has_many :exams

  default_scope :order => 'areas.name DESC'
end
