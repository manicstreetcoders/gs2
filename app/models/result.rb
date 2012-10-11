class Result < ActiveRecord::Base
  attr_accessible :user_id_str, :exam_id, :question_id, :user_selection, :answer, :used_time

  validates :user_id_str, :presence => true
  validates :exam_id, :presence => true
  validates :question_id, :presence => true
  validates :answer, :presence => true
  validates :used_time, :presence => true

end
