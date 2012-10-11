class Result < ActiveRecord::Base
  attr_accessible :user_id_str, :exam_id, :question_id, :user_selection, :answer, :used_time
end
