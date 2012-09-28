class Question < ActiveRecord::Base
  attr_accessible :exam_id, :group_number, :number, :xml

  belongs_to :exam

  attr_accessor :question_sentence
  attr_accessor :question_message
  attr_accessor :question_selection
  attr_accessor :question_answer

  default_scope :order => 'questions.number ASC'
end
