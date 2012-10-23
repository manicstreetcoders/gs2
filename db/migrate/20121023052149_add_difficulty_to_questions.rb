class AddDifficultyToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :difficulty, :decimal, :precision => 8, :scale => 5 
    add_column :questions, :sample_size, :integer
  end
end
