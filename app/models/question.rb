class Question < ActiveRecord::Base
  attr_accessible :exam_id, :group_number, :number, :num_selection, :xml

  validates :xml, :presence => true

  belongs_to :exam

  attr_accessor :question_sentence
  attr_accessor :question_message
  attr_accessor :question_selection
  attr_accessor :question_answer
  attr_accessor :question_point
  attr_accessor :is_question

  default_scope :order => 'questions.number ASC'
end
