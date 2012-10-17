class Exam < ActiveRecord::Base
  attr_accessible :area_id, :name, :source, :css_url, :time

  validates :name, :presence => true, :uniqueness => true
  validates :source, :presence => true
  validates :time, :presence => true
  
  belongs_to :area
  has_many :questions

  default_scope :order => 'exams.name DESC'
end
