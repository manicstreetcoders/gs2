class AddNumSelectionToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :num_selection, :integer
  end
end
